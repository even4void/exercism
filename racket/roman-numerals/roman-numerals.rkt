#lang racket

(provide to-roman)

(define (to-roman n)
  (cond [(>= n 1000) (string-append "M" (to-roman (- n 1000)))]
        [(>= n 900) (string-append "CM" (to-roman (- n 900)))]
        [(>= n 500) (string-append "D" (to-roman (- n 500)))]
        [(>= n 400) (string-append "CD" (to-roman (- n 400)))]
        [(>= n 100) (string-append "C" (to-roman (- n 100)))]
        [(>= n 90) (string-append "XC" (to-roman (- n 90)))]
        [(>= n 50) (string-append "L" (to-roman (- n 50)))]
        [(>= n 40) (string-append "XL" (to-roman (- n 40)))]
        [(>= n 10) (string-append "X" (to-roman (- n 10)))]
        [(>= n 9) (string-append "IX" (to-roman (- n 9)))]
        [(>= n 5) (string-append "V" (to-roman (- n 5)))]
        [(>= n 4) (string-append "IV" (to-roman (- n 4)))]
        [(>= n 1) (string-append "I" (to-roman (- n 1)))]
        [else ""]))
