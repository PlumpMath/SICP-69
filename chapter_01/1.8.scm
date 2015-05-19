(define (cube_root x)
    (cube_root_iter 1.0 x))

(define (cube_root_iter guess x)
    (cond ((good_enough? guess x) guess)
          (else (cube_root_iter (improve guess x) x))))

(define (good_enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))

(define (improve guess x)
    (/ (+ (/ x
             (* guess guess))
          (* 2 guess))
       3))

(cube_root 8)