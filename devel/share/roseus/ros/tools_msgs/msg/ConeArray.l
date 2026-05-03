;; Auto-generated. Do not edit!


(when (boundp 'tools_msgs::ConeArray)
  (if (not (find-package "TOOLS_MSGS"))
    (make-package "TOOLS_MSGS"))
  (shadow 'ConeArray (find-package "TOOLS_MSGS")))
(unless (find-package "TOOLS_MSGS::CONEARRAY")
  (make-package "TOOLS_MSGS::CONEARRAY"))

(in-package "ROS")
;;//! \htmlinclude ConeArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tools_msgs::ConeArray
  :super ros::object
  :slots (_header _cones _count ))

(defmethod tools_msgs::ConeArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cones __cones) ())
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cones __cones)
   (setq _count (round __count))
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
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tools_msgs/ConeInfo[] _cones
    (apply #'+ (send-all _cones :serialization-length)) 4
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tools_msgs/ConeInfo[] _cones
     (write-long (length _cones) s)
     (dolist (elem _cones)
       (send elem :serialize s)
       )
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tools_msgs/ConeInfo[] _cones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cones (let (r) (dotimes (i n) (push (instance tools_msgs::ConeInfo :init) r)) r))
     (dolist (elem- _cones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tools_msgs::ConeArray :md5sum-) "7697d41144d052204948f84dffaca26a")
(setf (get tools_msgs::ConeArray :datatype-) "tools_msgs/ConeArray")
(setf (get tools_msgs::ConeArray :definition-)
      "Header header                 # 时间戳+坐标系
tools_msgs/ConeInfo[] cones              # 锥桶数组
int32 count
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
MSG: tools_msgs/ConeInfo
int32 cone_id
int32 color
float32 position_x
float32 position_y
float32 confidence
")



(provide :tools_msgs/ConeArray "7697d41144d052204948f84dffaca26a")


