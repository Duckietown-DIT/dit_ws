;; Auto-generated. Do not edit!


(when (boundp 'mastering_ros_demo_pkg::Demo_actionFeedback)
  (if (not (find-package "MASTERING_ROS_DEMO_PKG"))
    (make-package "MASTERING_ROS_DEMO_PKG"))
  (shadow 'Demo_actionFeedback (find-package "MASTERING_ROS_DEMO_PKG")))
(unless (find-package "MASTERING_ROS_DEMO_PKG::DEMO_ACTIONFEEDBACK")
  (make-package "MASTERING_ROS_DEMO_PKG::DEMO_ACTIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude Demo_actionFeedback.msg.html


(defclass mastering_ros_demo_pkg::Demo_actionFeedback
  :super ros::object
  :slots (_current_number ))

(defmethod mastering_ros_demo_pkg::Demo_actionFeedback
  (:init
   (&key
    ((:current_number __current_number) 0)
    )
   (send-super :init)
   (setq _current_number (round __current_number))
   self)
  (:current_number
   (&optional __current_number)
   (if __current_number (setq _current_number __current_number)) _current_number)
  (:serialization-length
   ()
   (+
    ;; int32 _current_number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _current_number
       (write-long _current_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _current_number
     (setq _current_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mastering_ros_demo_pkg::Demo_actionFeedback :md5sum-) "a34d09927bdf6eea84e4ff079b190b1d")
(setf (get mastering_ros_demo_pkg::Demo_actionFeedback :datatype-) "mastering_ros_demo_pkg/Demo_actionFeedback")
(setf (get mastering_ros_demo_pkg::Demo_actionFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
int32 current_number


")



(provide :mastering_ros_demo_pkg/Demo_actionFeedback "a34d09927bdf6eea84e4ff079b190b1d")


