(defun c:duct-route()

  	;********************************************************
	;Save System Variables
	;(setq oldsnap (getvar "osmode"));save snap settings
	;(setq oldblipmode (getvar "blipmode"));save blipmode setting
	;Switch OFF System Variables
	(setvar "osmode" 0);Switch OFF snap
	(setvar "blipmode" 0);Switch OFF Blipmode
	;********************************************************
  


  	;get points from user
  	(setq num 0)
	(setq pointsList nil)
  
  	;while (create list of user's points)
  	(setvar "osmode" 14410)
  	(while (/=
		 	(setq point (getpoint "\nChoose point... (or ENTER for EXIT): ")) nil
		   );end test /=
	  (setq pointsList (append pointsList (list point)))
	  (setq num (1+ num))
	  (princ num) (princ " (st/nd/rd/th) point chosen.")
	 );end while
  	(setvar "osmode" 0)

  	(princ "\nList length: ") (princ (length pointsList))

  	(setq counter 0)
  	(while
	  (< counter (length pointsList)
	   );end test

	  (print "**") (princ counter) (princ "-st/nd/rd/th element of the list: ")
	  (princ
	    (nth counter pointsList)
	  );endprinc
	  (setq counter (1+ counter))
	);end while
  	
  	(print "INFO: ")
  	(princ num)
  	(princ " points was/were chosen in total.")

  	;draw lines through points
  	(command "pline")
	(foreach n pointsList
		(command n)
	  );;end foreach
	(command "")

  	;get duct width from the user
  	(setq ductWidth (getint "\nEnter the duct width: "))

  	;offset
  	(setq point1_2D (list (nth 0 (nth 0 pointsList)) (nth 1 (nth 0 pointsList))))
  	(setq point2_2D (list (nth 0 (nth 1 pointsList)) (nth 1 (nth 1 pointsList))))
  	(print "point1_2D: ") (princ point1_2D)
  	(print "point2_2D: ") (princ point2_2D) (print)
	(setq angle0 (angle point1_2D point2_2D))
  	(print "angle0: ") (princ angle0) (print)

  	(setq offsetPointL (polar point1_2D (+ angle0 (/ PI 4.00)) 10))	;temp point for offset
  	(setq offsetPointR (polar point1_2D (- angle0 (/ PI 4.00)) 5)) ;temp point for offset
  	(print "\noffsetPointL: ") (princ offsetPointL) (print)
  	;(command "_line" point1_2D offsetPointL "")
  	;(command "_line" point1_2D offsetPointR "")
	(command "_offset" (/ ductWidth 2.00) point1_2D offsetPointL "")
  	(command "_offset" (/ ductWidth 2.00) point1_2D offsetPointR "")
  	(command "_erase" point1_2D "")

  	;join polylines ;todo: > PI/2 angle0 error
  	(setq offsetPointLL (polar point1_2D (+ angle0 (/ PI 2.00)) (/ ductWidth 2.00))) ; point1 for left edge of the duct
  	(setq offsetPointRR (polar point1_2D (+ angle0 (/ (* 3 PI) 2.00)) (/ ductWidth 2.00))) ; point1 for right edge of the duct
  	(command "_line" offsetPointLL offsetPointRR "")

  	(setq offsetPointLLL (polar offsetPointLL angle0 10))
  	(setq offsetPointRRR (polar offsetPointRR angle0 10))

  	;(command "_circle" offsetPointLLL 2)
 	;(command "_circle" offsetPointRRR 1)
  	
  	(command "_pedit" "M" point1_2D offsetPointLLL offsetPointRRR "" "Y" "J" "" "")
  	(command "_pedit" "M" point1_2D "" "C" "" "")

	; HATCH/KRESKUJ
	(COMMAND "_-HATCH" "_P" "DOTS" "1" "0" "_S" offsetPointLLL "" "")
	;(command "_circle" offsetPointLLL 5)
  
    	;********************************************************
	;Save System Variables
	;Switch OFF System Variables
	(setvar "osmode" 1);Switch ON snap
	(setvar "blipmode" 0);Switch ON Blipmode
	;********************************************************
  
);end defun