;; Auto-generated. Do not edit!


(when (boundp 'ros_nodes::Communication)
  (if (not (find-package "ROS_NODES"))
    (make-package "ROS_NODES"))
  (shadow 'Communication (find-package "ROS_NODES")))
(unless (find-package "ROS_NODES::COMMUNICATION")
  (make-package "ROS_NODES::COMMUNICATION"))

(in-package "ROS")
;;//! \htmlinclude Communication.msg.html


(defclass ros_nodes::Communication
  :super ros::object
  :slots (_agentid _uri ))

(defmethod ros_nodes::Communication
  (:init
   (&key
    ((:agentid __agentid) "")
    ((:uri __uri) "")
    )
   (send-super :init)
   (setq _agentid (string __agentid))
   (setq _uri (string __uri))
   self)
  (:agentid
   (&optional __agentid)
   (if __agentid (setq _agentid __agentid)) _agentid)
  (:uri
   (&optional __uri)
   (if __uri (setq _uri __uri)) _uri)
  (:serialization-length
   ()
   (+
    ;; string _agentid
    4 (length _agentid)
    ;; string _uri
    4 (length _uri)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _agentid
       (write-long (length _agentid) s) (princ _agentid s)
     ;; string _uri
       (write-long (length _uri) s) (princ _uri s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _agentid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agentid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_nodes::Communication :md5sum-) "c03c71c688e6039580a604205a7b40fb")
(setf (get ros_nodes::Communication :datatype-) "ros_nodes/Communication")
(setf (get ros_nodes::Communication :definition-)
      "string agentid
string uri

")



(provide :ros_nodes/Communication "c03c71c688e6039580a604205a7b40fb")


