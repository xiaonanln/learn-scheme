

(define (fib-rec n)
  (if (<= n 1) 
	n
	(+ (fib-rec (- n 1)) (fib-rec (- n 2)))
	)
  )

(define (fib n)
  (fib-iter 1 0 0 1 n)
  )

(define (fib-iter a b p q count)
  (cond
	((= count 0) b)
	((even? count) (fib-iter a b (+ (* p p) (* q q)) (+ (* q q) (* 2 p q)) (/ count 2)) )
	(else (fib-iter (+ (* b q ) (* a q) (* a p)) (+ (* b p) (* a q)) p q (- count 1)))
	)
  )

