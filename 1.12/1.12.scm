(define (pr row n)
  (cond 
	((<= row 2) 1)
	((= n 1) 1)
	((= n row) 1)
	(else 
	  (+
		(pr (- row 1) (- n 1))
		(pr (- row 1) n))
	  )
	)
  )
