
(cl:in-package :asdf)

(defsystem "struct_with_variable_length_vector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "imgDataArray" :depends-on ("_package_imgDataArray"))
    (:file "_package_imgDataArray" :depends-on ("_package"))
    (:file "imgData" :depends-on ("_package_imgData"))
    (:file "_package_imgData" :depends-on ("_package"))
  ))