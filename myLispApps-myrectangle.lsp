;This function gets initial data to draw myrectangle
(defun c:myLispApps-myrectangle (/)

	(setq insertionType
		(getstring "\nSpecify insertion type [T-Top][L-Left][R-Right][B-Bottom] | [LT-LeftTop][RT-RightTop][LB-LeftBottom][R-RightBottom] : ")
	);	
		
	(setq width (getdist "\nSpecify width: " ))
	(setq height (getdist "\nSpcify height: " ))
	
	(setq insertionPoint
		(getpoint "\nSpecify insertion point for rectangle : ")
	);
	
	(myLispAppsCalc insertionType insertionPoint width height)
	
);defun

;This function calculate start point from insertionType and calls function drawing rectangle from insertion point
(defun myLispAppsCalc (insertionType insertionPoint width height / )

	;TODO
	;change if to case
	;add error handlers for esc key and for other key pressed

	(if 
		(= (strcase insertionType T) "lt")
		(setq startPointLeftTop insertionPoint)
	
	);if
	(if 
		(= (strcase insertionType T) "t")
		(progn
			(setq startPointLeftTop 
				(list
					(- (float (car insertionPoint)) (/ width 2))
					(+ (float (cadr insertionPoint)))
					(+ (float (caddr insertionPoint)) 0)
				);list
			);setq
		);progn
	
	);if
	(if 
		(= (strcase insertionType T) "rt")
		(progn
			(setq startPointLeftTop 
				(list
					(- (float (car insertionPoint)) width)
					(+ (float (cadr insertionPoint)))
					(+ (float (caddr insertionPoint)) 0)
				);list
			);setq
		);progn
	
	);if
	(if 
		(= (strcase insertionType T) "c")
		(progn
			(setq startPointLeftTop 
				(list
					(- (float (car insertionPoint)) (/ width 2))
					(+ (float (cadr insertionPoint)) (/ height 2))
					(+ (float (caddr insertionPoint)) 0)
				);list
			);setq
		);progn
	
	);if	
	(if 
		(= (strcase insertionType T) "l")
		(progn
			(setq startPointLeftTop 
				(list
					(+ (float (car insertionPoint)))
					(+ (float (cadr insertionPoint)) (/ height 2))
					(+ (float (caddr insertionPoint)) 0)
				);list
			);setq
		);progn
	);if
	(if 
		(= (strcase insertionType T) "r")
		(progn
			(setq startPointLeftTop 
				(list
					(- (float (car insertionPoint)) width)
					(+ (float (cadr insertionPoint)) (/ height 2))
					(+ (float (caddr insertionPoint)) 0)
				);list
			);setq
		);progn
	);if
	(if 
		(= (strcase insertionType T) "lb")
		(progn
			(setq startPointLeftTop 
				(list
					(+ (float (car insertionPoint)) 0)
					(+ (float (cadr insertionPoint)) height)
					(+ (float (caddr insertionPoint)) 0)
				);list
			);setq
		);progn
	);if	
	(if 
		(= (strcase insertionType T) "b")
		(progn
			(setq startPointLeftTop 
				(list
					(- (float (car insertionPoint)) (/ width 2))
					(+ (float (cadr insertionPoint)) height)
					(+ (float (caddr insertionPoint)) 0)
				);list
			);setq
		);progn
	);if
	(if 
		(= (strcase insertionType T) "rb")
		(progn
			(setq startPointLeftTop 
				(list
					(- (float (car insertionPoint)) width)
					(+ (float (cadr insertionPoint)) height)
					(+ (float (caddr insertionPoint)) 0)
				);list
			);setq
		);progn
	);if
	
	(princ "\Start point left: ")(princ startPointLeftTop)
	(myLispApps-draw-rectangle startPointLeftTop width height)

);defun

;This function draws rectangle from start point
(defun myLispApps-draw-rectangle (startPointLeftTop width height / )

	(command "osmode" "0")

	(princ "\nDraw rectangle function....")

	(setq endPointRightBottom
			(list
				(+ (float (car startPointLeftTop)) width)
				(- (float (cadr startPointLeftTop)) height)
				(+ (float (caddr startPointLeftTop)) 0.0)
			);list
	);setq
	(princ "\nEnd point: ")(princ endPointRightBottom)
	
	(command "_rectangle" startPointLeftTop endPointRightBottom)
	
	(command "osmode" "3815")

);defun