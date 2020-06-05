(defun c:getRoute()

	;draw spine
	(setq ssSpine (c:drawSpine))
	(print "Spine has been drawn successfully!") ;(princ ssSpine)
	
	;get width and draw edges (close polyline)
	;ok; (c:drawEdges (list ssSpine))
	(c:drawEdges)
	
	;clear last line
	(terpri)
)
(defun c:drawSpine()

	(command "._pline")
	(while (= 1 (getvar "cmdactive")) ;wait until _pline command finishes
		(command pause)
	)
	
	;return entity _pline
	(entget (entlast))
)

(defun c:drawEdges()
	
	; test if ssSpine entity correctly
	;(print "ssSpine received! ") ;(princ ssSpine)
	;(print "ssSpine type: ") (princ (assoc 0 ssSpine)) 
	;(terpri)
	
	;offset spine
	(command "_offset" pause (ssget "L"))
	(while 
		(= 1 (getvar "cmdactive"))
		(command pause)
	)

	;close polyline	

	
)