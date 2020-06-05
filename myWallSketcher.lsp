(defun c:myWallSketcher()

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
    	(setq NxtPnt (getpoint FstPnt "\nSelect next point: "))
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
  
  (c:drawThroughPoints pointsList)

  (command "osmode" "0")
  
  (setq ss0 (ssget "L"))
  (setq linesList (list ss0))
  (setq width (getreal "\Enter the width: "))
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

  (command "_pedit" "M"
	 ss1 ss2 ss3 ""
	 "J" ""
	 "C" ""
	 "")
  (setq ss4 (ssget "L"))
	(setq ent4 (entget (entlast)))
	(print "ss4: ") (princ ss4) (terpri)
	(print "ent4: ") (princ ent4) (terpri)
	(setq ent4 (subst (cons 8 "L00_WALLS_NEW") (assoc 8 ent4) ent4))
	(entmod ent4)
	
	
	(command 
		;"-hatch" "p" "ANSI31" "1" "0" "an" "y" "la" "L00_WALLS_NEW" "co" 8 "" "s" (ssget "L") "" ""
		"-hatch" "p" "ANSI31" "1" "0" "an" "n" "la" "L00_WALLS_NEW" "co" 8 "" "s" (ssget "L") "" ""
	)

  	(command
		"-layer" "s" "0" ""
	)

  (command "osmode" "3815")
  
);end defun