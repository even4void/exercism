#lang racket

(provide classify)

(require math/number-theory
         math/base)

(define (perfect-number? n)
  (= (sum (divisors n)) (* 2 n)))

(define (perfect-numbers n)
  (filter perfect-number? (range 1 (add1 n))))

(define (classify n)
  (let ([aliquot-sum (sum (divisors n))])
    (cond [(= aliquot-sum (* 2 n)) 'perfect]
          [(> aliquot-sum n) 'abundant]
          [else 'deficient])))
