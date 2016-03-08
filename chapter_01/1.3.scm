(define (sum-of-two-bigger-num x y z)
  (- (+ x y z) 
     (min x y z)))

(sum-of-two-bigger-num 3 2 1)
(sum-of-two-bigger-num 4 3 6)
(sum-of-two-bigger-num 2 3 4)
(sum-of-two-bigger-num 3 3 1)
(sum-of-two-bigger-num 3 1 1)
(sum-of-two-bigger-num 4 6 6)
(sum-of-two-bigger-num -4 1 2)
(sum-of-two-bigger-num -4 -2 -3)

