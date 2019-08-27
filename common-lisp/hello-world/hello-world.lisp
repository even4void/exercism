(defpackage #:hello-world
  (:use #:common-lisp)
  (:export #:hello-world)
  (:nicknames #:hw))

(in-package #:hello-world)

(defun hello-world ()
  "Print what everybody expect"
  "Hello, World!")
