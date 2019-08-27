#lang racket

;; In great part stiolen from the online solution on Github, although I made some
;; effort to rewrite `num->list' and to study/understand the code before submitting.

(provide rebase)

(define (reduce fn lst)
  (if (null? (cdr lst))
      (car lst)
      (foldl fn (car lst) (cdr lst))))

(define (list->num lst base)
  (reduce
   (λ (c sum)
     (+ (* sum base) c))
   lst))

(define (num->list num base)
  (let loop ((num num)
             (acc '()))
    (if (< num base)
        (cons num acc)
        (loop (quotient num base)
              (cons (remainder num base) acc)))))

(define (rebase list-digits in-base out-base)
  (and (< 1 in-base)
       (< 1 out-base)
       (andmap (λ (x)
                 (< -1 x in-base))
               list-digits)
       (if (null? list-digits)
           '(0)
           (num->list (list->num list-digits in-base)
                      out-base))))
