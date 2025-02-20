(defun c:myLispApp-route-sketcher( / *error*)

	;error function
	(defun *error* (msg)
		(princ "error: ")
		(princ msg)
		(c:myOsmode)
		(c:l0)
		(princ)
	);defun error

	(command "osmode" "0")

  (setq FstPnt nil)
  (setq NxtPnt nil)
  (print "initial FstPnt: ") (princ FstPnt)
  (print "initial NxtPnt: ") (princ NxtPnt)
  (setq pointsList nil)
    (print "initial pointsList: ") (princ pointsList)
  
  (setq counter 1)
  ; Get point until nil (ENTER)
  (while (/=
		; if this is not first point..
	  	(if (/= NxtPnt nil)
		  	; .. get next point
			 	(setq FstPnt NxtPnt)
		; if this is first point ..
		  	(if (= counter 1)
			; get first point ..
			   (setq FstPnt (getpoint "\nSelect first point: "))
		);endif

	);endif
	nil
   );end while

    ; if first point exist, get next point`
    (if (/= FstPnt nil)
    	(setq NxtPnt (getpoint FstPnt "\nSelect next point [ENTER - finish route]: "))
    )

    (if (/= NxtPnt nil)
     	(grdraw FstPnt NxtPnt -1 0)
    )
    
	(print "counter: ") (princ counter)
	(print "FstPnt: ") (princ FstPnt)
    (print "NxtPnt: ") (princ NxtPnt)

	(if
	  	(= counter 1);testif
		(setq add (list FstPnt NxtPnt))
	  	(progn
		  	(if (/= NxtPnt nil)
		  	   (setq add (list NxtPnt))
			  );if
		);progn
	  );if
	
	(print "pointsList: ") (princ pointsList)	
	;if NxtPnt == nil
		(print "add: ") (princ add)	
    ;if NxtPnt /= nil
	(if (/= NxtPnt nil)
		(setq pointsList (append pointsList add))
	)
		
    (setq counter (1+ counter))
   );end while
  
  ;(print "so pointsList to send: ") (princ pointsList) ;pointsList ready to send to drawThroughPoints function
  
  (drawThroughPoints pointsList)

  (command "osmode" "0")
  
  (setq ss0 (ssget "L"))
  (setq linesList (list ss0))
  (setq width (getdist "\Enter/Pick the width: "))
  (setq angleBegin (angle (car pointsList) (cadr pointsList)))

  (setq beforeLastPoint (nth 1 (reverse pointsList))); todo
  (print "\n _ beforeLastPoint: ") (princ beforeLastPoint)

  (setq lastPoint (nth 0 (reverse pointsList))) ; todo
  (print "\n _ LastPoint: ") (princ lastPoint)
  
  (setq angleEnd
	 (angle
	   beforeLastPoint
	   lastPoint
	   );angle
	);setq
  (print "\n _ AngleBegin: ") (princ angleBegin)
  (print "\n _ AngleEnd: ") (princ angleEnd)
  (command
	"_offset"
	(/ width 2)
	ss0
	"m"
	(polar (car pointsList) (+ angleBegin (/ PI 4)) (/ width 2))
   )
  (setq ss1 (ssget "L"))
  (setq linesList (append linesList (list ss1)))
  (command
	(polar (car pointsList) (- angleBegin (/ PI 4)) (/ width 2))
	""
	""
    )
  (setq ss2 (ssget "L"))
  (setq linesList (append linesList (list ss2)))

  (command
    "_pline"
    	(polar (car pointsList) (+ angleBegin (/ PI 2)) (/ width 2))
	(polar (car pointsList) (- angleBegin (/ PI 2)) (/ width 2))
    ""
    )

  (setq ss3 (ssget "L"))
  (setq linesList (append linesList (list ss3)))

    (command
    "_pline"
    	(polar lastPoint (+ angleEnd (/ PI 2) ) (/ width 2))
		(polar lastPoint (- angleEnd (/ PI 2) ) (/ width 2))
    ""
    )
  (setq ss4 (ssget "L"))
  (setq linesList (append linesList (list ss4)))
  
  (print "\nLinesLIst: ") (princ linesList)

  (command
    "_erase"
    (car linesList) (last linesList)
    ""
    )
	
	(routeType)

  	(command
		"-layer" "s" "0" ""
	)

  (command "osmode" "3815")
  
);end defun

(defun routeType()

	; set defult layer and hatch
	(setq layerToDraw "L00_WALLS_NEW")
	(setq hatchToDraw "ANSI31")


	;ask user for change layer and hatch
	(setq layerChoose (getstring "\nChoose type for duct 'W'alls / electrical 'F'loor / 'D'emolition / electrical 'C'eiling (or ENTER for NEW WALLS): "))
	(print "layerChosen: ") (princ layerChoose) (terpri) 	
	(cond 
		((or (= layerChoose "w") (= layerChoose "W")) 
			(setq layerToDraw "L00_WALLS")
			;(setq hatchToDraw "CROSS")
			(setq hatchToDraw "ANSI37")
		)
		((or (= layerChoose "f") (= layerChoose "F")) 
			(setq layerToDraw "L20_FLOOR_MOUNTING_ELECT")
			(setq hatchToDraw "DOTS")
		)
		((or (= layerChoose "c") (= layerChoose "C")) 
			(setq layerToDraw "L21_CEILING_MOUNTING_ELECT")
			(setq hatchToDraw "ANSI31")
		)
		((or (= layerChoose "d") (= layerChoose "D")) 
			(setq layerToDraw "L05_DEMOLITION")
			(setq hatchToDraw "DOTS")
		)
	)
	
	;draw with default or user changes
  (command "_pedit" "M"
	 ss1 ss2 ss3 ""
	 "J" ""
	 "C" ""
	 "")
  (setq ss4 (ssget "L"))
	(setq ent4 (entget (entlast)))
	(print "ss4: ") (princ ss4) (terpri)
	(print "ent4: ") (princ ent4) (terpri)
	(setq ent4 (subst (cons 8 layerToDraw) (assoc 8 ent4) ent4))
	(entmod ent4)
	
	
	(command 
		"-hatch" "p" hatchToDraw "1" "0" "an" "y" "a" "a" "y" "" "la" layerToDraw "co" 8 "" "s" (ssget "L") "" ""
	)

)

(defun drawThroughPoints(pointsList / n)
  
  (print "pointsList received: ") (princ pointsList) ;test received arguments if exists
  (terpri)

  ;draw lines through points
	  (command "pline")
	  (foreach n pointsList
	    (command n)
	    );;end foreach
	  (command "")
  
  );end defun