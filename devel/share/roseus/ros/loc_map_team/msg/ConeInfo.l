;; Auto-generated. Do not edit!


(when (boundp 'loc_map_team::ConeInfo)
  (if (not (find-package "LOC_MAP_TEAM"))
    (make-package "LOC_MAP_TEAM"))
  (shadow 'ConeInfo (find-package "LOC_MAP_TEAM")))
(unless (find-package "LOC_MAP_TEAM::CONEINFO")
  (make-package "LOC_MAP_TEAM::CONEINFO"))

(in-package "ROS")
;;//! \htmlinclude ConeInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass loc_map_team::ConeInfo
  :super ros::object
  :slots (_position _color ))

(defmethod loc_map_team::ConeInfo
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:color __color) "")
    )
   (send-super :init)
   (setq _position __position)
   (setq _color (string __color))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get loc_map_team::ConeInfo :md5sum-) "fdb36a76f9fb2552b0d47bc7d542080a")
(setf (get loc_map_team::ConeInfo :datatype-) "loc_map_team/ConeInfo")
(setf (get loc_map_team::ConeInfo :definition-)
      "geometry_msgs/Point position
string color
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :loc_map_team/ConeInfo "fdb36a76f9fb2552b0d47bc7d542080a")


