;sum of two bigger number

(define (>= x y)
    (not (< x y)))

(define (sum x y z)
    (cond ((and (>= x z) (>= y z)) (+ x y))
          ((and (>= x y) (>= z y)) (+ x z))
          (else (+ y z))))

(sum 3 2 1)
(sum 4 3 6)
(sum 2 3 4)
(sum 3 3 1)
(sum 3 1 1)
(sum 4 6 6)
(sum -4 1 2)
(sum -4 -2 -3)