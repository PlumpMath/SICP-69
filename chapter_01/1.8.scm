(define (cube x) (* x x x))

(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x))))

(define (cube_root x)
    (define (cube_root_iter guess)
        (cond ((good_enough? guess) guess)
              (else (cube_root_iter (improve guess)))))
    (define (good_enough? guess)
        (< (abs (- (cube guess) x)) 0.001))
    (define (improve guess)
        (/ (+ (/ x
                 (* guess guess))
              (* 2 guess))
           3))
    (cube_root_iter 1.0))

(cube_root 64)