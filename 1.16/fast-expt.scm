
(define (fast-expt b n)
  (cond ((= n 0) 1)
		((even? n) (square (fast-expt b (/ n 2))))
		(else (* b (fast-expt b (- n 1))))
		)
  )

(define (fast-expt2 b n)
  (fast-expt-iter b n 1)
  )

(define (fast-expt-iter b n p)
  (cond ((= n 0) p)
		((even? n) (fast-expt-iter (* b b) (/ n 2) p))
		(else (fast-expt-iter b (- n 1) (* p b)))
		)
  )

