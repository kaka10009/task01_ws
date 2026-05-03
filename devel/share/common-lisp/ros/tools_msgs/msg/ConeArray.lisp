; Auto-generated. Do not edit!


(cl:in-package tools_msgs-msg)


;//! \htmlinclude ConeArray.msg.html

(cl:defclass <ConeArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cones
    :reader cones
    :initarg :cones
    :type (cl:vector tools_msgs-msg:ConeInfo)
   :initform (cl:make-array 0 :element-type 'tools_msgs-msg:ConeInfo :initial-element (cl:make-instance 'tools_msgs-msg:ConeInfo)))
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass ConeArray (<ConeArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConeArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConeArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_msgs-msg:<ConeArray> is deprecated: use tools_msgs-msg:ConeArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:header-val is deprecated.  Use tools_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cones-val :lambda-list '(m))
(cl:defmethod cones-val ((m <ConeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:cones-val is deprecated.  Use tools_msgs-msg:cones instead.")
  (cones m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <ConeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:count-val is deprecated.  Use tools_msgs-msg:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConeArray>) ostream)
  "Serializes a message object of type '<ConeArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cones))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConeArray>) istream)
  "Deserializes a message object of type '<ConeArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tools_msgs-msg:ConeInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConeArray>)))
  "Returns string type for a message object of type '<ConeArray>"
  "tools_msgs/ConeArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConeArray)))
  "Returns string type for a message object of type 'ConeArray"
  "tools_msgs/ConeArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConeArray>)))
  "Returns md5sum for a message object of type '<ConeArray>"
  "7697d41144d052204948f84dffaca26a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConeArray)))
  "Returns md5sum for a message object of type 'ConeArray"
  "7697d41144d052204948f84dffaca26a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConeArray>)))
  "Returns full string definition for message of type '<ConeArray>"
  (cl:format cl:nil "Header header                 # 时间戳+坐标系~%tools_msgs/ConeInfo[] cones              # 锥桶数组~%int32 count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tools_msgs/ConeInfo~%int32 cone_id~%int32 color~%float32 position_x~%float32 position_y~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConeArray)))
  "Returns full string definition for message of type 'ConeArray"
  (cl:format cl:nil "Header header                 # 时间戳+坐标系~%tools_msgs/ConeInfo[] cones              # 锥桶数组~%int32 count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tools_msgs/ConeInfo~%int32 cone_id~%int32 color~%float32 position_x~%float32 position_y~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConeArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConeArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ConeArray
    (cl:cons ':header (header msg))
    (cl:cons ':cones (cones msg))
    (cl:cons ':count (count msg))
))
