(defpackage #:build
  (:use :cl))

(in-package #:build)
(load "gamepicker.lisp")

(defparameter *build-dir* "./build/")
(defparameter *exec-name* (concatenate 'string *build-dir* "gamepicker"))

(if (string-equal (software-type) "Win32") 
    (setf *exec-name* 
	  (concatenate 'string *exec-name* "-" gamepicker:*version* ".exe")))

(ensure-directories-exist *build-dir*)

(sb-ext:save-lisp-and-die *exec-name* :toplevel #'gamepicker:main :executable t)
