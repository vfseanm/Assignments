#lang racket


;;; Return the sum of all numbers up to and including n for 0 <= n.
<<<<<<< HEAD
(define (sum-to-n n) 
  (if (zero? n)
    0
    (+ n (sum-to-n (- n 1)))))

;;; Calculate n choose r, for 0 <= n, 0 <= r <= n
(define (combination n r) 
  (cond 
    ((zero? r) 1)
    ((= n r) 1)
    (else
      (+ (combination (- n 1) r)
         (combination (- n 1) (- r 1))))))
=======
(define (sum-to-n n)
  (cond
   ((zero? n) 0)
   (else
    (+ n (sum-to-n (- n 1))))))

;;; Calculate n choose r, for 0 <= n, 0 <= r <= n
(define (combination n r)
  (cond
   ((zero? r) 1)
   ((= n r) 1)
   (else
    (+ (combination (- n 1) (- r 1))
       (combination (- n 1) r)))))
>>>>>>> 778a4fa6f29a0a16c030e6224c82535bed5e8d9c

(define (fib n) 
  (cond
    ((zero? n) 0)
    ((= n 1) 1)
    (else
      (+ fib (- n 1)
         fib (- n 2)))))
;;; Return the sum of all numbers in a list
(define (sum lst)
  (cond
<<<<<<< HEAD
    ((null? lst) 0)
    (else
      (+ (car lst) (sum (cdr lst))))))

;;; Return whether element a is contained in list lst
(define (member? a lst) 
  (cond
    ((null? lst) #f)
    ((equal? a (car lst)) #t)
    (else
      (member? a (cdr lst)))))
=======
   ((null? lst) 0)
   (else
    (+ (car lst) (sum (cdr lst))))))

;;; Return whether element a is contained in list lst
(define (member? a lst)
  (cond
   ((null? lst) #f)
   ((equal? a (car lst)) #t)
   (else
    (member? a (cdr lst)))))
>>>>>>> 778a4fa6f29a0a16c030e6224c82535bed5e8d9c

;;; Return a list with the *first* instance of element a removed if present
(define (rember lst a)
  (cond
<<<<<<< HEAD
    ((null? lst) lst)
    ((equal? a (car lst)) (cdr lst))
    (else
      ((cons (car lst) rember (cdr lst) a)))))

(define (atom? a)
  (not (list? a)))
=======
   ((null? lst) '())
   ((equal? a (car lst)) (cdr lst))
   (else
    (cons (car lst) (rember (cdr lst) a)))))
>>>>>>> 778a4fa6f29a0a16c030e6224c82535bed5e8d9c

;;; Return whether element a is contained in any level of S-expression lst
(define (member?* a lst) 
  (cond
    ((null? lst) #f)
    ((equal? a (car lst)) #t) 
    ((and (list? (car lst))
          (member?* a (car lst))) #t)
    (else
      (member?* a (cdr lst)))))


;;; Return the intersection of sets set1 and set2
;;; set1 and set2 are guaranteed not to contain duplicate elements
(define (intersect set1 set2)
  (cond
    ((null? set1) null)
    (else
      (let ([rest (intersect (cdr set1) set2)])
    (if (member? (car set1) set2)
      (cons (car set1) rest)
    rest)))))

;;; Return whether the list contains two equal adjacent elements
(define (two-in-a-row? lst) 
  ((null? lst) #f)
  ((null? (cdr lst) #f))
  ((equal? (car lst) (cadr lst))) #t)
  (else
    (two-in-a-row? (cdr lst))))

;;; Return the nth element of a list
(define (nth lst n) null)

;;; Return a list containing the unique elements of lst
(define (dedup lst)
  (cond
    ((null? lst) null)
    ((member? (car lst) (cdr lst))
      (dedup (cr lst)))
    (else
      (cons (car lst) (dedup (caar lst))))))

;;; Return a list containing the elements of lst in reverse order
(define (reverse lst)
  (define (rev-h lst rev)
    (cond
      ((null? lst) rev)
      (else
        (rev-h (cdr lst) (cons (car lst) rev)))))
  (rev-h lst '()))


(provide
 fib
 sum-to-n
 combination
 sum
 rember
 member?
 member?*
 intersect
 two-in-a-row?
 nth
 dedup
 reverse)
