#lang racket

;; The nth element of the Fibonacci sequence. 0, 1, 1, 2, 3, 5...
(define (fibonacci n) 
  (define (fib-helper x1 x2 n)
    (cond
     ((zero? n ) x1)
     ((= n 1) x2)
     (else
(fib-helper x2 (+ x1 x2) (- n 1)))))
(fib-helper 0 1 n))


;; Quick sort
(define (qsort lst) 
  (cond
    ((null? lst) '())
    (else
      (let* ((pivot (car lst))
        (less-than? (lambda (x) (<= x pivot)))
        (greater-than? (lambda (x) (> x pivot))))
      (append
        (qsort (filter less-than? (cdr lst)))
        (cons pivot '())
        (qsort (filter greater-than? (cdr lst))))))))

;; Reverse the list
(define (reverse lst) 
  (foldl cons '() lst))

 

;; Find maximum element of list using > operator
(define (maximum lst)
  (foldl
   (lambda (x init) (if (> x init) x init))
   (car lst)
   (cdr lst)))



;; Find the product of the digits of a non-negative integer n
(define (product-of-digits n)
  (cond
   (( < n 10) n )
   (else
    (* (modulo n 10) (product-of-digits (quotient n 10))))))


;; Find the greatest number which is the product of the digits of a prime less than n
;; I don't have the range function so this doesnt work :( 



(provide
 fibonacci
 qsort
 maximum
 product-of-digits)
