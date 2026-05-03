; Auto-generated. Do not edit!


(cl:in-package loc_map_team-msg)


;//! \htmlinclude ConeDetection2DArray.msg.html

(cl:defclass <ConeDetection2DArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cones
    :reader cones
    :initarg :cones
    :type (cl:vector loc_map_team-msg:ConeDetection2D)
   :initform (cl:make-array 0 :element-type 'loc_map_team-msg:ConeDetection2D :initial-element (cl:make-instance 'loc_map_team-msg:ConeDetection2D))))
)

(cl:defclass ConeDetection2DArray (<ConeDetection2DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConeDetection2DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConeDetection2DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name loc_map_team-msg:<ConeDetection2DArray> is deprecated: use loc_map_team-msg:ConeDetection2DArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConeDetection2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader loc_map_team-msg:header-val is deprecated.  Use loc_map_team-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cones-val :lambda-list '(m))
(cl:defmethod cones-val ((m <ConeDetection2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader loc_map_team-msg:cones-val is deprecated.  Use loc_map_team-msg:cones instead.")
  (cones m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConeDetection2DArray>) ostream)
  "Serializes a message object of type '<ConeDetection2DArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cones))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConeDetection2DArray>) istream)
  "Deserializes a message object of type '<ConeDetection2DArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'loc_map_team-msg:ConeDetection2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConeDetection2DArray>)))
  "Returns string type for a message object of type '<ConeDetection2DArray>"
  "loc_map_team/ConeDetection2DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConeDetection2DArray)))
  "Returns string type for a message object of type 'ConeDetection2DArray"
  "loc_map_team/ConeDetection2DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConeDetection2DArray>)))
  "Returns md5sum for a message object of type '<ConeDetection2DArray>"
  "744c29900cdc6759a0a8197665c4f5b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConeDetection2DArray)))
  "Returns md5sum for a message object of type 'ConeDetection2DArray"
  "744c29900cdc6759a0a8197665c4f5b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConeDetection2DArray>)))
  "Returns full string definition for message of type '<ConeDetection2DArray>"
  (cl:format cl:nil "# 一帧图像中所有锥桶的2D检测结果~%Header header~%ConeDetection2D[] cones~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: loc_map_team/ConeDetection2D~%# 单个锥桶的2D检测结果~%float32 x1          # 检测框左上角 x ~%float32 y1          # 检测框左上角 y ~%float32 x2          # 检测框右下角 x ~%float32 y2          # 检测框右下角 y ~%float32 confidence  # 置信度~%string color        # red_cone / blue_cone / yellow_cone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConeDetection2DArray)))
  "Returns full string definition for message of type 'ConeDetection2DArray"
  (cl:format cl:nil "# 一帧图像中所有锥桶的2D检测结果~%Header header~%ConeDetection2D[] cones~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: loc_map_team/ConeDetection2D~%# 单个锥桶的2D检测结果~%float32 x1          # 检测框左上角 x ~%float32 y1          # 检测框左上角 y ~%float32 x2          # 检测框右下角 x ~%float32 y2          # 检测框右下角 y ~%float32 confidence  # 置信度~%string color        # red_cone / blue_cone / yellow_cone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConeDetection2DArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConeDetection2DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ConeDetection2DArray
    (cl:cons ':header (header msg))
    (cl:cons ':cones (cones msg))
))
