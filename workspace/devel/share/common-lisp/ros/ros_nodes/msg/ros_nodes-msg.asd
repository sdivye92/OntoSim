
(cl:in-package :asdf)

(defsystem "ros_nodes-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Communication" :depends-on ("_package_Communication"))
    (:file "_package_Communication" :depends-on ("_package"))
  ))