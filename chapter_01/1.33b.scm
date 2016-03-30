(define (filtered-accumulate combiner null-value term a next b filter)
  (define (accumuate a)
    (if (> a b)
      null-value
      (if (filter a)
        (combiner (term a)
                  (accumuate (next a)))
        (accumuate (next a)))))
  (accumuate a))

(define (filtered-accumulate combiner null-value term a next b filter)
  (define (iter a result)
    (if (> a b)
      result
      (if (filter a)
        (iter (next a) (combiner (term a) result))
        (iter (next a) result))))
  (iter a null-value))

 
(define (product term a next b)
  (define (check-prime? a)
    (= 1 (gcd a b)))
  (filtered-accumulate * 1 term a next b check-prime?))

(define (prime-product n)
  (define (identify x) x)
  (define (next x) (+ x 1))
  (product identify 1 next n))

(prime-product 6)
;(prime-product 7)
;(prime-product 3)
;(prime-product 4)


