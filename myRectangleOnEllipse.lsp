; program to draw rectangle from center point (based on ellipse)
; ONLY HORIZONTALLY/VERTICALLY
(defun c:myRectangleOnEllipse()

	; get the coordinates using _ellipse commnad
	(command
		"._ellipse" "c"
	)
	(setq center (getpoint "\nCenter: "))
	(command center)
	(setq x (getdist center "\nX axis: "))
	(command x)
	(setq y (getdist center "\nY axis: "))
	(command y)

	; calculate the width and the lengthdepth of the rectangle
	(setq width
		(* x 2)
	)
	(setq lengthdepth
		(* y 2)
	)
	
	; calculate points for the rectangle
	(setq point1
		(list
			(-
				(car center)
				(/ width 2)
			)
			(+
				(car (cdr center))
				(/ lengthdepth 2)
			)
			0
		)
	)
	(setq point2
		(list
			(+
				(car center)
				(/ width 2)
			)
			(+
				(car (cdr center))
				(/ lengthdepth 2)
			)
			0
		)
	)
	(setq point3
		(list
			(+
				(car center)
				(/ width 2)
			)
			(-
				(car (cdr center))
				(/ lengthdepth 2)
			)
			0
		)
	)
	(setq point4
		(list
			(-
				(car center)
				(/ width 2)
			)
			(-
				(car (cdr center))
				(/ lengthdepth 2)
			)
			0
		)
	)
	
	; draw the rectangle using _pline
	(setq pointsList 
		(list point1 point2 point3 point4 point1)
	)	
	;draw lines through points
	(command "pline")
		(foreach n pointsList
		(command n)
		);;end foreach
	(command "")

	
	; erease the ellipse
	; todo

);defun