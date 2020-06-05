(DEFUN C:DUCT-OPENING()

  ; DRAW RECTANGLE / RYSUJ PROSTOKAT
  (SETQ CENTER (GETPOINT "\nWskaz punkt (Pick point):")
	 )
  (print "CENTER POINT: ") (princ center)

  (SETQ WIDTH (GETREAL "\nPodaj szerokosc (Write width) [FORMAT 0.0]:")
	)
  (print "WIDTH: ") (princ width)

  (SETQ HEIGHT (GETREAL "\nPodaj dlugosc (Write length) [FORMAT 0.0]:")
	)
  (print "LENGTH: ") (princ height)
  
  (SETQ CENTERX (CAR CENTER))
  (print "CENTER X COORD.: ") (princ CENTERX)
  (SETQ CENTERY (CADR CENTER))
  (print "CENTER Y COORD.: ") (princ CENTERY)

  (SETQ POINT1X (- CENTERX (* WIDTH 0.5)))
  (SETQ POINT1Y (- CENTERY (* HEIGHT 0.5)))
  (SETQ POINT1 (LIST POINT1X POINT1Y))
  
  (SETQ POINT2X (+ CENTERX (* WIDTH 0.5)))
  (SETQ POINT2Y (+ CENTERY (* HEIGHT 0.5)))
  (SETQ POINT2 (LIST POINT2X POINT2Y))
  
  (COMMAND "_RECTANGLE" POINT1 POINT2
	   )
	(setq ssRectangle (entget (entlast)))
  
  ; HATCH/KRESKUJ
  (COMMAND "_-HATCH" "_P" "ANSI37" "2" "0" "_AN" "N" "_S" POINT2 "" "")
	(setq ssHatch (entget (entlast)))
	
  ; SET LAYER / PRZYPISZ DO WARSTWY

  (setq layerToUse (getstring "\nUse HSCAD FLOOR MOUNT. ELECT. LAYER? [y/n]: "))
  
  (if (or (= layerToUse "y") (= layerToUse "Y"))
	(progn
		(setq ssRectangle (subst  (cons  8  "L20_FLOOR_MOUNTING_ELECT") (assoc 8 ssRectangle)  ssRectangle) )
		(entmod ssRectangle)
		(setq ssHatch (subst  (cons  8  "L20_FLOOR_MOUNTING_ELECT") (assoc 8 ssHatch)  ssHatch) )
		(entmod ssHatch)
	)
  )

  
  (terpri)
) ;END DEFUN