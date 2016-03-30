(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a)
            (combiner result
                      (term a)))))
  (iter a null-value))
 
(define (product term a next b)
  (accumulate * 1 term a next b))

(define (sum term a next b)
  (accumulate + 0 term a next b))


(define (cube x) (* x x x))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (next x) (+ x (* 2 h)))
  (* (/ h 3) (+ (f a)
                (* 4 (sum f (+ a h) next (- b h)))
                (* 2 (sum f (+ a (* 2 h)) next (- b (* 2 h))))
                (f b))))

(integral cube 0.0 1.0 100)
(integral cube 0.0 1.0 1000)


(define (factorial n)
  (define (identify x) x)
  (define (next x) (+ x 1))
  (product identify 1 next n))

(factorial 5)
