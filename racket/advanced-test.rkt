#lang racket

(require rackunit "advanced.rkt")

(test-case
 "fibonacci"
 (check-equal? (fibonacci 0) 0)
 (check-equal? (fibonacci 1) 1)
 (check-equal? (fibonacci 2) 1)
 (check-equal? (fibonacci 10) 55)
 (check-equal? (fibonacci 100) 354224848179261915075))

(test-case
 "qsort"
 (check-equal? (qsort '()) '())
 (check-equal? (qsort '(1)) '(1))
 (check-equal? (qsort '(1 2 3)) '(1 2 3))
 (check-equal? (qsort '(3 2 1)) '(1 2 3))
 (check-equal? (qsort '(3 4 1 5 2)) '(1 2 3 4 5))
 (check-equal? (qsort '(3 4 1 5 2 3 3)) '(1 2 3 3 3 4 5)))

(test-case
 "reverse"
 (check-equal? (reverse '()) '())
 (check-equal? (reverse '(a)) '(a))
 (check-equal? (reverse '(a b c d)) '(d c b a)))


(test-case
 "maximum"
 (check-equal? (maximum '(1 2 3)) 3)
 (check-equal? (maximum '(-1 3 -2)) 3)
 (check-equal? (maximum '(-1)) -1))
