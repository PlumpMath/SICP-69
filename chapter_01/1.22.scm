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

(define (prime? n)
  (= n (smallest-divisior n)))

(define (time-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
    (report-time (- (runtime) start-time))))

(define (report-time elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes start end)
  (if (< start end)
    (cond ((even? start) (search-for-primes (+ start 1) end))
          (else (time-prime-test start) 
                (search-for-primes (+ start 2) end)))))

(define (search-for-primes start end)
  (if (even? start)
    (search-for-primes (+ start 1) end)
    (cond ((< start end) (time-prime-test start) 
                         (search-for-primes (+ start 2) end)))))

(search-for-primes 14 14)

