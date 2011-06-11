#!/usr/local/bin/guile -s
!#

;; EXERCISE 1.3 Define a procedure that takes three numbers as arguments
;; and returns the sum of the squares of the two larger numbers. 


(define (square x) (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(define (sum-larger-squares x y z)
    (cond ((and (<= x y) (<= x z))
              (sum-of-squares y z))
          ((and (<= y x) (<= y z))
              (sum-of-squares x z))
          (else
              (sum-of-squares x y))))

