(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

;; Rosetta Code solution
;; https://rosettacode.org/wiki/Leap_year#Common_Lisp
;; (defun leap-year-p (year)
;;   (destructuring-bind (fh h f)
;;       (mapcar #'(lambda (n) (zerop (mod year n))) '(400 100 4))
;;     (or fh (and (not h) f))))

(defun is-divisible (year n)
  (= 0 (mod year n)))

(defun leap-year-p (year)
  (cond ((is-divisible year 400) t)
        ((is-divisible year 100) nil)
        ((is-divisible year 4) t)))
