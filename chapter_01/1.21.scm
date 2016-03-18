(define (square x) 
  (* x x))

(define (divide? n x) 
  (= 0 (remainder n x)))

(define (smallest-divisior n) 
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divide? n test-divisor) test-divisor)
        (else 
          (find-divisor n (+ test-divisor 1)))))

(smallest-divisior 3)
(smallest-divisior 4)
(smallest-divisior 6)
(smallest-divisior 199)
(smallest-divisior 1999)
(smallest-divisior 19999)


