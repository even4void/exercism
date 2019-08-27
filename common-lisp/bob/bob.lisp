(in-package #:cl-user)
(defpackage #:bob
  (:use #:cl)
  (:export #:response-for))
(in-package #:bob)

(defun last-char (input)
  (char (reverse input) 0))

(defun question-p (input)
  (char= (last-char input) #\?))

(defun yelling-p (input)
  (unless (string= (remove-if #'alpha-char-p input)
                   input)
    (string= (string-upcase input) input)))

(defun silence-p (input)
  (string= "" input))

(defun response-for (input)
  (let ((line (string-trim '(#\space #\tab #\newline #\page) input)))
    (cond
      ((silence-p line) "Fine. Be that way!")
      ((and (yelling-p line) (question-p line)) "Calm down, I know what I'm doing!")
      ((yelling-p line) "Whoa, chill out!")
      ((question-p line) "Sure.")
      ("Whatever."))))
