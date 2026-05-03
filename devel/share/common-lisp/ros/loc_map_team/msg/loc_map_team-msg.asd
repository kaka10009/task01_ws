
(cl:in-package :asdf)

(defsystem "loc_map_team-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ConeArray" :depends-on ("_package_ConeArray"))
    (:file "_package_ConeArray" :depends-on ("_package"))
    (:file "ConeDetection2D" :depends-on ("_package_ConeDetection2D"))
    (:file "_package_ConeDetection2D" :depends-on ("_package"))
    (:file "ConeDetection2DArray" :depends-on ("_package_ConeDetection2DArray"))
    (:file "_package_ConeDetection2DArray" :depends-on ("_package"))
    (:file "ConeInfo" :depends-on ("_package_ConeInfo"))
    (:file "_package_ConeInfo" :depends-on ("_package"))
  ))