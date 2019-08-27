#lang racket

(provide leap-year?)

(define (divisible? year n)
  (= 0 (modulo year n)))

(define (leap-year? year)
  (cond [(divisible? year 400) #t]
        [(divisible? year 100) #f]
        [(divisible? year 4) #t]
        [else #f]))
