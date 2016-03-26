(define (square x) 
  (* x x))

(define (prime? n)
  (fast-prime? n 10))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
          (remainder (* base (expmod base (- exp 1) m))
                     m))))

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

(search-for-primes 1000000000000 1000000000030)

