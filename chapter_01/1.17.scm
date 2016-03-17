(define (* a b) 
  (if (= b 1)
    0
    (+ a (* a (- b 1)))))

(* 1 2)

(define (even? x) 
  (= 0 (remainder x 2)))

(define (double x) 
  (+ x x))

(define (halve x) 
  (/ x 2))

(define (* a b)
  (cond ((= b 1) a)
        ((= b 0) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ a (* a (- b 1))))))

    

(* 2 3)
(* 0 2)
(* 2 0)
