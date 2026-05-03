; Auto-generated. Do not edit!


(cl:in-package tools_msgs-msg)


;//! \htmlinclude ConeInfo.msg.html

(cl:defclass <ConeInfo> (roslisp-msg-protocol:ros-message)
  ((cone_id
    :reader cone_id
    :initarg :cone_id
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0)
   (position_x
    :reader position_x
    :initarg :position_x
    :type cl:float
    :initform 0.0)
   (position_y
    :reader position_y
    :initarg :position_y
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConeInfo (<ConeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_msgs-msg:<ConeInfo> is deprecated: use tools_msgs-msg:ConeInfo instead.")))

(cl:ensure-generic-function 'cone_id-val :lambda-list '(m))
(cl:defmethod cone_id-val ((m <ConeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:cone_id-val is deprecated.  Use tools_msgs-msg:cone_id instead.")
  (cone_id m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ConeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:color-val is deprecated.  Use tools_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'position_x-val :lambda-list '(m))
(cl:defmethod position_x-val ((m <ConeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:position_x-val is deprecated.  Use tools_msgs-msg:position_x instead.")
  (position_x m))

(cl:ensure-generic-function 'position_y-val :lambda-list '(m))
(cl:defmethod position_y-val ((m <ConeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:position_y-val is deprecated.  Use tools_msgs-msg:position_y instead.")
  (position_y m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ConeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:confidence-val is deprecated.  Use tools_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConeInfo>) ostream)
  "Serializes a message object of type '<ConeInfo>"
  (cl:let* ((signed (cl:slot-value msg 'cone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConeInfo>) istream)
  "Deserializes a message object of type '<ConeInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cone_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConeInfo>)))
  "Returns string type for a message object of type '<ConeInfo>"
  "tools_msgs/ConeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConeInfo)))
  "Returns string type for a message object of type 'ConeInfo"
  "tools_msgs/ConeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConeInfo>)))
  "Returns md5sum for a message object of type '<ConeInfo>"
  "0da50e2dcec8ef7611d66b74becda81e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConeInfo)))
  "Returns md5sum for a message object of type 'ConeInfo"
  "0da50e2dcec8ef7611d66b74becda81e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConeInfo>)))
  "Returns full string definition for message of type '<ConeInfo>"
  (cl:format cl:nil "int32 cone_id~%int32 color~%float32 position_x~%float32 position_y~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConeInfo)))
  "Returns full string definition for message of type 'ConeInfo"
  (cl:format cl:nil "int32 cone_id~%int32 color~%float32 position_x~%float32 position_y~%float32 confidence~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConeInfo>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ConeInfo
    (cl:cons ':cone_id (cone_id msg))
    (cl:cons ':color (color msg))
    (cl:cons ':position_x (position_x msg))
    (cl:cons ':position_y (position_y msg))
    (cl:cons ':confidence (confidence msg))
))
