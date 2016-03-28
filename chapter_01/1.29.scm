(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (next x) (+ x (* 2 h)))
  (* (/ h 3) (+ (f a)
                (* 4 (sum f (+ a h) next (- b h)))
                (* 2 (sum f (+ a (* 2 h)) next (- b (* 2 h))))
                (f b))))

(integral cube 0.0 1.0 100)
(integral cube 0.0 1.0 1000)
(integral cube 0.0 1.0 10000)

    
   

