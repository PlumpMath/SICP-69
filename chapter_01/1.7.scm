(define (sqrt x)
  (sqrt-iter 1.0 2.0 x))

(define (sqrt-iter fir-guess sec-guess x)
  (if (good-enough? fir-guess sec-guess)
    sec-guess 
    (sqrt-iter sec-guess 
               (improve sec-guess x)
               x)))

(define (good-enough? fir-guess sec-guess)
  (< (/ (abs (- fir-guess sec-guess)) sec-guess) 0.0001))

(define (square x)
  (* x x))

(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        (else 0)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(sqrt 2)
(sqrt 3)
(sqrt 10000)
