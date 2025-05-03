
(cl:in-package :asdf)

(defsystem "yahboomcar_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobotArmArray" :depends-on ("_package_RobotArmArray"))
    (:file "_package_RobotArmArray" :depends-on ("_package"))
    (:file "kinemarics" :depends-on ("_package_kinemarics"))
    (:file "_package_kinemarics" :depends-on ("_package"))
  ))