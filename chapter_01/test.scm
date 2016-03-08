;(define (<name> <formal parameters>) <body>)
(define (square x) (* x x))

(square 21)
(square (+ 2 5))
(square (square 3))

(define x 3)
(define y 4)
(+ (square x) (square y))

(define (sum_of_squares x y)
    (+ (square x) (square y)))
(sum_of_squares x y)

(define (f a)
    (sum_of_squares (+ a 1) (* a 2)))
(f 5)

(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))
(abs -2)
(abs 0)
(abs 2)

(define (abs1 x)
    (cond ((> x 0) x)
          (else (- x))))
(abs1 -2)
(abs1 0)
(abs1 2)

(define (abs2 x)
    (if (> x 0)
        x
        (- x)))
(abs2 -2)
(abs2 2)
(abs2 0)

(define a 3)
(define b (+ a 1))

(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a)
         b
         a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))


(define (good_enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
(define (average x y)
    (/ (+ x y) 2))
(define (improve guess x)
    (average guess (/ x guess)))
(define (sqrt_iter guess x)
    (cond ((good_enough? guess x) guess)
          (else (sqrt_iter (improve guess x) x))))
(define (sqrt x)
    (sqrt_iter 1.0 x))
(sqrt 9)
(sqrt 4)
(sqrt 2)

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
(abs -3)
(abs 0)
(abs 2)

(define (abs x)
  (cond ((> x 0) x)
        (else (- x))))
(abs -3)
(abs 2)
(abs 0)

(define (>= x y) 
  (or (> x y)
      (= x y)))
(>= 3 3)

(define (abs x)
  (if (> x 0)
    x
    (- x)))
(abs -2)
