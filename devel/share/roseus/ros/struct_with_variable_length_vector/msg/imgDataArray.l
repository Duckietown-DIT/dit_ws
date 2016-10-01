;; Auto-generated. Do not edit!


(when (boundp 'struct_with_variable_length_vector::imgDataArray)
  (if (not (find-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR"))
    (make-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR"))
  (shadow 'imgDataArray (find-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR")))
(unless (find-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR::IMGDATAARRAY")
  (make-package "STRUCT_WITH_VARIABLE_LENGTH_VECTOR::IMGDATAARRAY"))

(in-package "ROS")
;;//! \htmlinclude imgDataArray.msg.html


(defclass struct_with_variable_length_vector::imgDataArray
  :super ros::object
  :slots (_images ))

(defmethod struct_with_variable_length_vector::imgDataArray
  (:init
   (&key
    ((:images __images) (let (r) (dotimes (i 0) (push (instance struct_with_variable_length_vector::imgData :init) r)) r))
    )
   (send-super :init)
   (setq _images __images)
   self)
  (:images
   (&rest __images)
   (if (keywordp (car __images))
       (send* _images __images)
     (progn
       (if __images (setq _images (car __images)))
       _images)))
  (:serialization-length
   ()
   (+
    ;; struct_with_variable_length_vector/imgData[] _images
    (apply #'+ (send-all _images :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; struct_with_variable_length_vector/imgData[] _images
     (write-long (length _images) s)
     (dolist (elem _images)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; struct_with_variable_length_vector/imgData[] _images
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _images (let (r) (dotimes (i n) (push (instance struct_with_variable_length_vector::imgData :init) r)) r))
     (dolist (elem- _images)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get struct_with_variable_length_vector::imgDataArray :md5sum-) "33ef5e3553d4634610bed239b5d40f16")
(setf (get struct_with_variable_length_vector::imgDataArray :datatype-) "struct_with_variable_length_vector/imgDataArray")
(setf (get struct_with_variable_length_vector::imgDataArray :definition-)
      "imgData[] images

================================================================================
MSG: struct_with_variable_length_vector/imgData
string label
int16 size
int16 stride
int16 dataOffset
int16[4] Data

")



(provide :struct_with_variable_length_vector/imgDataArray "33ef5e3553d4634610bed239b5d40f16")


