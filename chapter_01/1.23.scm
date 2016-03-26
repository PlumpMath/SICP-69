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
          (find-divisor n (next test-divisor)))))

(define (next test-divisor)
  (if (= test-divisor 2)
    (+ test-divisor 1)
    (+ test-divisor 2)))

(smallest-divisior 1001)
(smallest-divisior 10001)
(smallest-divisior 100001)
(smallest-divisior 1000001)



