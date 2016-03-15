(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(define (f n)
  (define (iter a b c counter) 
    (cond ((= counter 0) a)
          ((= counter 1) b)
          ((= counter 2) c)
          (else (iter b 
                      c 
                      (+ c (* 2 b) (* 3 a)) 
                      (- counter 1)))))
  (iter 0 1 2 n)) 
    

(= 0 (f 0))
(= 1 (f 1))
(= 2 (f 2))
(= 4 (f 3))
(= 11 (f 4))
(= 25 (f 5))
(f 6)
