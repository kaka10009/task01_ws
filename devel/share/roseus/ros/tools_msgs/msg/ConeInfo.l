;; Auto-generated. Do not edit!


(when (boundp 'tools_msgs::ConeInfo)
  (if (not (find-package "TOOLS_MSGS"))
    (make-package "TOOLS_MSGS"))
  (shadow 'ConeInfo (find-package "TOOLS_MSGS")))
(unless (find-package "TOOLS_MSGS::CONEINFO")
  (make-package "TOOLS_MSGS::CONEINFO"))

(in-package "ROS")
;;//! \htmlinclude ConeInfo.msg.html


(defclass tools_msgs::ConeInfo
  :super ros::object
  :slots (_cone_id _color _position_x _position_y _confidence ))

(defmethod tools_msgs::ConeInfo
  (:init
   (&key
    ((:cone_id __cone_id) 0)
    ((:color __color) 0)
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _cone_id (round __cone_id))
   (setq _color (round __color))
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _confidence (float __confidence))
   self)
  (:cone_id
   (&optional __cone_id)
   (if __cone_id (setq _cone_id __cone_id)) _cone_id)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; int32 _cone_id
    4
    ;; int32 _color
    4
    ;; float32 _position_x
    4
    ;; float32 _position_y
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cone_id
       (write-long _cone_id s)
     ;; int32 _color
       (write-long _color s)
     ;; float32 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cone_id
     (setq _cone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _position_x
     (setq _position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_y
     (setq _position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tools_msgs::ConeInfo :md5sum-) "0da50e2dcec8ef7611d66b74becda81e")
(setf (get tools_msgs::ConeInfo :datatype-) "tools_msgs/ConeInfo")
(setf (get tools_msgs::ConeInfo :definition-)
      "int32 cone_id
int32 color
float32 position_x
float32 position_y
float32 confidence
")



(provide :tools_msgs/ConeInfo "0da50e2dcec8ef7611d66b74becda81e")


