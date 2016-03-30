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
      

(define (sum term a next b)
  (filtered-accumulate + 0 term a next b prime?))

(define (prime-sum a b)
  (define (identify x) x)
  (define (next x) (+ x 1))
  (sum identify a next b))

(prime-sum 11 13)


