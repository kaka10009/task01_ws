;; Auto-generated. Do not edit!


(when (boundp 'loc_map_team::ConeDetection2D)
  (if (not (find-package "LOC_MAP_TEAM"))
    (make-package "LOC_MAP_TEAM"))
  (shadow 'ConeDetection2D (find-package "LOC_MAP_TEAM")))
(unless (find-package "LOC_MAP_TEAM::CONEDETECTION2D")
  (make-package "LOC_MAP_TEAM::CONEDETECTION2D"))

(in-package "ROS")
;;//! \htmlinclude ConeDetection2D.msg.html


(defclass loc_map_team::ConeDetection2D
  :super ros::object
  :slots (_x1 _y1 _x2 _y2 _confidence _color ))

(defmethod loc_map_team::ConeDetection2D
  (:init
   (&key
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:confidence __confidence) 0.0)
    ((:color __color) "")
    )
   (send-super :init)
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _confidence (float __confidence))
   (setq _color (string __color))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ;; float32 _x2
    4
    ;; float32 _y2
    4
    ;; float32 _confidence
    4
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get loc_map_team::ConeDetection2D :md5sum-) "09f91f151155db7dea880a9d6b53d71b")
(setf (get loc_map_team::ConeDetection2D :datatype-) "loc_map_team/ConeDetection2D")
(setf (get loc_map_team::ConeDetection2D :definition-)
      "# 单个锥桶的2D检测结果
float32 x1          # 检测框左上角 x 
float32 y1          # 检测框左上角 y 
float32 x2          # 检测框右下角 x 
float32 y2          # 检测框右下角 y 
float32 confidence  # 置信度
string color        # red_cone / blue_cone / yellow_cone

")



(provide :loc_map_team/ConeDetection2D "09f91f151155db7dea880a9d6b53d71b")


