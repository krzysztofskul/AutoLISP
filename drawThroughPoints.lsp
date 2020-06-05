(defun c:drawThroughPoints(pointsList / n)
  
  (print "pointsList received: ") (princ pointsList) ;test received arguments if exists
  (terpri)

  ;draw lines through points
	  (command "pline")
	  (foreach n pointsList
	    (command n)
	    );;end foreach
	  (command "")
  
  );end defun