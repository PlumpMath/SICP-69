(define (even? x) 
  (= 0 (remainder x 2)))

(define (double x) 
  (+ x x))

(define (halve x) 
  (/ x 2))

(define (* a b)
  (define (iter a b result)
    (cond ((= b 0) result)
          ((even? b) (iter (double a) (halve b) result))
          (else (iter a (- b 1) (+ result a)))))
  (iter a b 0))

(* 2 0)
(* 3 2)
(* 0 3)
