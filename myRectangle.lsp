(defun c:myRectangle()

  	(vl-load-com)

  	(setq acadObject
		(vlax-get-acad-object)
	)
  	(setq activeDocument
		(vla-get-ActiveDocument acadObject)
     	)
  	(setq modelSpace
	      	(vla-get-ModelSpace activeDocument)
 	)

  	(vlax-dump-object modelSpace T)

	;(setq pt1 (getpoint "\nSpecify First Point : "))
	;(while (setq pt2 (getpoint "\nSpecify next point : " pt1))
	;(vla-addline modelSpace (vlax-3d-point pt1) (vlax-3d-point pt2))
	;(setq pt1 pt2)
	;)

  	;(setq pt1 (getpoint "\nSpecify First Point : "))
	;(setq pt2 (getpoint "\nSpecify next point : " pt1))
	;(setq ourLine (vla-addline modelSpace (vlax-3d-point pt1)
  	;(vlax-3d-point pt2)))

  	;(vlax-dump-object ourLine T)
  	;(vla-put-layer ourLine 2)
  	;(vla-put-color ourLine 6)

  	(setq center (getpoint "\nSpecify center point: "))
  	(setq width (getdist "\nSpecify width: "))
  	(setq lengthdepth (getdist "\nSpecify length/depth point: "))

  	;setq start point for pline
  	(setq startPointX
		(-
			(car center)
			(/ width 2)
		)
	)
  	(setq startPointY
		(+	
			(car (cdr center))
			(/ lengthdepth 2)
		)
	)
	(setq startPoint
	    (list startPointX startPointY 0.0)
	)
	(setq 2ndPoint
		(list 
			(+ startPointX width) 
			startPointY
			0.0
		 ) 
	)
	(setq 3rdPoint
		(list 
			(+ startPointX width) 
			(- startPointY lengthdepth) 
			0.0
		 )
	)
	(setq 4thPoint
		(list 
			startPointX
			(- startPointY lengthdepth) 
			0.0
		)
	)
	;end setq start point

  	;pline draw
  	(command "_pline"
		startPoint 
		2ndPoint 
		3rdPoint
		4thPoint
		"c"	
 	);end pline

);end defun