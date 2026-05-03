#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include<tf/transform_datatypes.h>

#include <tools_msgs/ConeArray.h>
#include <tools_msgs/ConeInfo.h>

// 定位位姿（标准里程计）
#include <nav_msgs/Odometry.h>

// 时间同步保留（关键：保证锥桶和车时间对齐
#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/synchronizer.h>

#include <vector>
#include <cmath>

using namespace message_filters;
             cone_array_msg->header.stamp.toSec());

    visualization_msgs::Marker car_marker;
    car_marker.action = visualization_msgs::Marker::ADD;

// 全局发布器
ros::Publisher car_marker_pub;    // 小车可视化
ros::Publisher cone_marker_pub;    // 锥桶可视化


void syncCallback(
    const nav_msgs::OdometryConstPtr& odom_msg,
    const tools_msgs::ConeArrayConstPtr& cone_array_msg
)
{
    ROS_INFO("Sync OK: odom=%.3f, cones=%.3f",
             odom_msg->header.stamp.toSec(),
             cone_array_msg->header.stamp.toSec());

    visualization_msgs::Marker car_marker;
    car_marker.action = visualization_msgs::Marker::ADD;
    car_marker.type=visualization_msgs::Marker::CUBE;

   
    car_marker.pose = odom_msg->pose.pose;

    // 小车尺寸
    car_marker.scale.x = 1.0;
    car_marker.scale.y = 0.5;
    car_marker.scale.z = 0.3;

    // 小车颜色
    car_marker.color.r = 0.8;
    car_marker.color.g = 0.8;
    car_marker.color.b = 0.8;
    car_marker.color.a = 0.8;

   
    car_marker_pub.publish(car_marker);

    
    visualization_msgs::MarkerArray marker_array;
    for (size_t i = 0; i < cone_array_msg->cones.size(); ++i)
    {
        const auto& cone = cone_array_msg->cones[i];

        visualization_msgs::Marker marker;
        marker.header = cone_array_msg->header;
        marker.header.frame_id = "map";  // 和小车完全同坐标系
        marker.ns = "team_cones";
        marker.id = i;
        marker.type = visualization_msgs::Marker::CYLINDER;
        marker.action = visualization_msgs::Marker::ADD;

        
        marker.pose.position.x = cone.position_x;
        marker.pose.position.y = cone.position_y;
        marker.pose.position.z = 0.2;
        marker.pose.orientation.w = 1.0;

        marker.scale.x = 0.3;
        marker.scale.y = 0.3;
        marker.scale.z = 0.5;

        // 按tools_msgs颜色字段上色
        switch (cone.color)
        {
            case 1: marker.color.r=1; marker.color.g=1; marker.color.b=0; break; // 黄
            case 2: marker.color.r=0; marker.color.g=0; marker.color.b=1; break; // 蓝
            case 3: marker.color.r=1; marker.color.g=0; marker.color.b=0; break; // 红
            default: marker.color.r=0.5; marker.color.g=0.5; marker.color.b=0.5;
        }
        marker.color.a = 1.0;
        marker.lifetime = ros::Duration(0.3);

        marker_array.markers.push_back(marker);
    }

    cone_marker_pub.publish(marker_array);
}


void timerCallback(const ros::TimerEvent& e, ros::NodeHandle& nh)
{
    static double t = 0.0;
    ros::Time now = ros::Time::now();

    // 小车画圆运动
    double R = 5.0;
    double x = R * cos(t);
    double y = R * sin(t);
    double yaw = t + M_PI/2;

    // 发布定位位姿（map坐标系）
    nav_msgs::Odometry odom_msg;
    odom_msg.header.stamp = now;
    odom_msg.header.frame_id = "map";
    odom_msg.pose.pose.position.x = x;
    odom_msg.pose.pose.position.y = y;
    odom_msg.pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);

    static ros::Publisher odom_pub = nh.advertise<nav_msgs::Odometry>("/odom", 10);
    odom_pub.publish(odom_msg);

    // 发布tools_msgs锥桶（map坐标系，和车同时间戳）
    tools_msgs::ConeArray cone_array_msg;
    cone_array_msg.header.stamp = now;
    cone_array_msg.header.frame_id = "map";

    // 模拟两个锥桶
    tools_msgs::ConeInfo c1, c2;
    c1.cone_id = 1; c1.color = 3; c1.position_x = 3.0; c1.position_y = 0.0; c1.confidence = 0.98;
    c2.cone_id = 2; c2.color = 2; c2.position_x = -2.0; c2.position_y = 1.0; c2.confidence = 0.97;

    cone_array_msg.cones.push_back(c1);
    cone_array_msg.cones.push_back(c2);
    cone_array_msg.count = cone_array_msg.cones.size();

    static ros::Publisher cone_pub = nh.advertise<tools_msgs::ConeArray>("/perception/cone_array", 10);
    cone_pub.publish(cone_array_msg);

    t += 0.03;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "loc_map_no_tf_node");
    ros::NodeHandle nh;

   
    // 时间同步订阅（保证车+锥桶时间对齐）
    message_filters::Subscriber<nav_msgs::Odometry> odom_sub(nh, "/odom", 10);
    message_filters::Subscriber<tools_msgs::ConeArray> cone_sub(nh, "/perception/cone_array", 10);

    typedef sync_policies::ApproximateTime<nav_msgs::Odometry, tools_msgs::ConeArray> MySyncPolicy;
    Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), odom_sub, cone_sub);
    sync.registerCallback(boost::bind(&syncCallback, _1, _2));

    // 可视化发布器
    car_marker_pub = nh.advertise<visualization_msgs::Marker>("/car/marker", 10);
    cone_marker_pub = nh.advertise<visualization_msgs::MarkerArray>("/team/cone_markers", 10);

    // 模拟数据定时器
    ros::Timer timer = nh.createTimer(ros::Duration(0.1),
        boost::bind(timerCallback, _1, boost::ref(nh)));

    

    ros::spin();
    return 0;
}