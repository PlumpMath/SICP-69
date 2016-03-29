(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))


(define (factorial n)
  (define (identify x) x)
  (define (next x) (+ x 1))
  (product identify 1 next n))

(define (pi n)
  (define (square x) (* x x))
  (define (next x) (+ x 2))
  (* 8.0
     n
     (/ (product square 4 next (- n 2))
        (product square 3 next (- n 1)))))

(factorial 3)
(factorial 4)
(factorial 5)

(pi 1000)
(pi 100)
(pi 10000)
(pi 100000)


