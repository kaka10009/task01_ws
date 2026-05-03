; Auto-generated. Do not edit!


(cl:in-package tools_msgs-msg)


;//! \htmlinclude ConeDetection2D.msg.html

(cl:defclass <ConeDetection2D> (roslisp-msg-protocol:ros-message)
  ((x1
    :reader x1
    :initarg :x1
    :type cl:float
    :initform 0.0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:float
    :initform 0.0)
   (x2
    :reader x2
    :initarg :x2
    :type cl:float
    :initform 0.0)
   (y2
    :reader y2
    :initarg :y2
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass ConeDetection2D (<ConeDetection2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConeDetection2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConeDetection2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tools_msgs-msg:<ConeDetection2D> is deprecated: use tools_msgs-msg:ConeDetection2D instead.")))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <ConeDetection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:x1-val is deprecated.  Use tools_msgs-msg:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <ConeDetection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:y1-val is deprecated.  Use tools_msgs-msg:y1 instead.")
  (y1 m))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <ConeDetection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:x2-val is deprecated.  Use tools_msgs-msg:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'y2-val :lambda-list '(m))
(cl:defmethod y2-val ((m <ConeDetection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:y2-val is deprecated.  Use tools_msgs-msg:y2 instead.")
  (y2 m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ConeDetection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:confidence-val is deprecated.  Use tools_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ConeDetection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tools_msgs-msg:color-val is deprecated.  Use tools_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConeDetection2D>) ostream)
  "Serializes a message object of type '<ConeDetection2D>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConeDetection2D>) istream)
  "Deserializes a message object of type '<ConeDetection2D>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConeDetection2D>)))
  "Returns string type for a message object of type '<ConeDetection2D>"
  "tools_msgs/ConeDetection2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConeDetection2D)))
  "Returns string type for a message object of type 'ConeDetection2D"
  "tools_msgs/ConeDetection2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConeDetection2D>)))
  "Returns md5sum for a message object of type '<ConeDetection2D>"
  "09f91f151155db7dea880a9d6b53d71b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConeDetection2D)))
  "Returns md5sum for a message object of type 'ConeDetection2D"
  "09f91f151155db7dea880a9d6b53d71b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConeDetection2D>)))
  "Returns full string definition for message of type '<ConeDetection2D>"
  (cl:format cl:nil "# 单个锥桶的2D检测结果~%float32 x1          # 检测框左上角 x ~%float32 y1          # 检测框左上角 y ~%float32 x2          # 检测框右下角 x ~%float32 y2          # 检测框右下角 y ~%float32 confidence  # 置信度~%string color        # red_cone / blue_cone / yellow_cone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConeDetection2D)))
  "Returns full string definition for message of type 'ConeDetection2D"
  (cl:format cl:nil "# 单个锥桶的2D检测结果~%float32 x1          # 检测框左上角 x ~%float32 y1          # 检测框左上角 y ~%float32 x2          # 检测框右下角 x ~%float32 y2          # 检测框右下角 y ~%float32 confidence  # 置信度~%string color        # red_cone / blue_cone / yellow_cone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConeDetection2D>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConeDetection2D>))
  "Converts a ROS message object to a list"
  (cl:list 'ConeDetection2D
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':y1 (y1 msg))
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':y2 (y2 msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':color (color msg))
))
