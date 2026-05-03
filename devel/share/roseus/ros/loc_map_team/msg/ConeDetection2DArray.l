;; Auto-generated. Do not edit!


(when (boundp 'loc_map_team::ConeDetection2DArray)
  (if (not (find-package "LOC_MAP_TEAM"))
    (make-package "LOC_MAP_TEAM"))
  (shadow 'ConeDetection2DArray (find-package "LOC_MAP_TEAM")))
(unless (find-package "LOC_MAP_TEAM::CONEDETECTION2DARRAY")
  (make-package "LOC_MAP_TEAM::CONEDETECTION2DARRAY"))

(in-package "ROS")
;;//! \htmlinclude ConeDetection2DArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass loc_map_team::ConeDetection2DArray
  :super ros::object
  :slots (_header _cones ))

(defmethod loc_map_team::ConeDetection2DArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cones __cones) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _cones __cones)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cones
   (&rest __cones)
   (if (keywordp (car __cones))
       (send* _cones __cones)
     (progn
       (if __cones (setq _cones (car __cones)))
       _cones)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; loc_map_team/ConeDetection2D[] _cones
    (apply #'+ (send-all _cones :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; loc_map_team/ConeDetection2D[] _cones
     (write-long (length _cones) s)
     (dolist (elem _cones)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; loc_map_team/ConeDetection2D[] _cones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cones (let (r) (dotimes (i n) (push (instance loc_map_team::ConeDetection2D :init) r)) r))
     (dolist (elem- _cones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get loc_map_team::ConeDetection2DArray :md5sum-) "744c29900cdc6759a0a8197665c4f5b3")
(setf (get loc_map_team::ConeDetection2DArray :datatype-) "loc_map_team/ConeDetection2DArray")
(setf (get loc_map_team::ConeDetection2DArray :definition-)
      "# 一帧图像中所有锥桶的2D检测结果
Header header
ConeDetection2D[] cones

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: loc_map_team/ConeDetection2D
# 单个锥桶的2D检测结果
float32 x1          # 检测框左上角 x 
float32 y1          # 检测框左上角 y 
float32 x2          # 检测框右下角 x 
float32 y2          # 检测框右下角 y 
float32 confidence  # 置信度
string color        # red_cone / blue_cone / yellow_cone

")



(provide :loc_map_team/ConeDetection2DArray "744c29900cdc6759a0a8197665c4f5b3")


