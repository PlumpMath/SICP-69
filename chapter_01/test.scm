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