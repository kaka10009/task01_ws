; Auto-generated. Do not edit!


(cl:in-package loc_map_team-msg)


;//! \htmlinclude ConeInfo.msg.html

(cl:defclass <ConeInfo> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass ConeInfo (<ConeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name loc_map_team-msg:<ConeInfo> is deprecated: use loc_map_team-msg:ConeInfo instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ConeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader loc_map_team-msg:position-val is deprecated.  Use loc_map_team-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ConeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader loc_map_team-msg:color-val is deprecated.  Use loc_map_team-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConeInfo>) ostream)
  "Serializes a message object of type '<ConeInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConeInfo>) istream)
  "Deserializes a message object of type '<ConeInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConeInfo>)))
  "Returns string type for a message object of type '<ConeInfo>"
  "loc_map_team/ConeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConeInfo)))
  "Returns string type for a message object of type 'ConeInfo"
  "loc_map_team/ConeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConeInfo>)))
  "Returns md5sum for a message object of type '<ConeInfo>"
  "fdb36a76f9fb2552b0d47bc7d542080a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConeInfo)))
  "Returns md5sum for a message object of type 'ConeInfo"
  "fdb36a76f9fb2552b0d47bc7d542080a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConeInfo>)))
  "Returns full string definition for message of type '<ConeInfo>"
  (cl:format cl:nil "geometry_msgs/Point position~%string color~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConeInfo)))
  "Returns full string definition for message of type 'ConeInfo"
  (cl:format cl:nil "geometry_msgs/Point position~%string color~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConeInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ConeInfo
    (cl:cons ':position (position msg))
    (cl:cons ':color (color msg))
))
