(defun c:myLispApp-set-my-new-layers()

	;;;
	; set new layers
	;;;
	
	(command-s "_layer" "m" "-INFO--ROOM"
	 "c" "8" "-INFO--ROOM"
	 "l" "CONTINUOUS" "-INFO--ROOM"
	 "p" "p" "-INFO--ROOM"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "-INFO--EQUIPMENT"
	 "c" "8" "-INFO--EQUIPMENT"
	 "l" "CONTINUOUS" "-INFO--EQUIPMENT"
	 "p" "p" "-INFO--EQUIPMENT"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "-INFO--DOOR&WINDOWS"
	 "c" "8" "-INFO--DOOR&WINDOWS"
	 "l" "CONTINUOUS" "-INFO--DOOR&WINDOWS"
	 "p" "p" "-INFO--DOOR&WINDOWS"
	 ""
	 );command-s
	
	(command-s "_layer" "m" "L08_DIM_CEILING_MOUNTING"
	 "c" "t" "0,191,255" "L08_DIM_CEILING_MOUNTING"
	 "l" "CONTINUOUS" "L08_DIM_CEILING_MOUNTING"
	 "p" "p" "L08_DIM_CEILING_MOUNTING"
	 ""
	 );command-s	
	 
	 (command-s "_layer" "m" "L08_DIM_WALL_MOUNTING"
	 "c" "t" "255,127,0" "L08_DIM_WALL_MOUNTING"
	 "l" "CONTINUOUS" "L08_DIM_WALL_MOUNTING"
	 "p" "p" "L08_DIM_WALL_MOUNTING"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L00_LAYOUT"
	 "c" "t" "102,102,102" "L00_LAYOUT"
	 "l" "CONTINUOUS" "L00_LAYOUT"
	 "p" "p" "L00_LAYOUT"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L90_TEXT_ROOM_SYMBOL"
	 "c" "t" "102,102,102" "L90_TEXT_ROOM_SYMBOL"
	 "l" "CONTINUOUS" "L90_TEXT_ROOM_SYMBOL"
	 "p" "p" "L90_TEXT_ROOM_SYMBOL"
	 ""
	 );command-s
	 
  	(command-s "_layer" "m" "L90_TEXT_CEILING_MOUNTING"
	 "c" "t" "0,191,255" "L90_TEXT_CEILING_MOUNTING"
	 "l" "CONTINUOUS" "L90_TEXT_CEILING_MOUNTING"
	 "p" "p" "L90_TEXT_CEILING_MOUNTING"
	 ""
	 );command-s
	 
    (command-s "_layer" "m" "L90_TEXT_WALL_MOUNTING"
	 "c" "t" "255,127,0" "L90_TEXT_WALL_MOUNTING"
	 "l" "CONTINUOUS" "L90_TEXT_WALL_MOUNTING"
	 "p" "p" "L90_TEXT_WALL_MOUNTING"
	 ""
	 );command-s
	 
      	(command-s "_layer" "m" "L90_TEXT_FLOOR_MOUNTING"
	 "c" "t" "255,0,255" "L90_TEXT_FLOOR_MOUNTING"
	 "l" "CONTINUOUS" "L90_TEXT_FLOOR_MOUNTING"
	 "p" "p" "L90_TEXT_FLOOR_MOUNTING"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L90_TEXT_ROOM_NAME"
	 "c" "t" "102,102,102" "L90_TEXT_ROOM_NAME"
	 "l" "CONTINUOUS" "L90_TEXT_ROOM_NAME"
	 "p" "p" "L90_TEXT_ROOM_NAME"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L00_WALLS_NEW"
	 "c" "12" "L00_WALLS_NEW"
	 "l" "CONTINUOUS" "L00_WALLS_NEW"
	 "p" "p" "L00_WALLS_NEW"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L00_WALLS"
		 "c" "7" "L00_WALLS"
		 "l" "CONTINUOUS" "L00_WALLS"
		 "p" "p" "L00_WALLS"
		 ""	
	 );command-s
	 
	(command-s "_layer" "m" "L00_FLOOR"
		 "c" "white" "L00_FLOOR"
		 "l" "CONTINUOUS" "L00_FLOOR"
		 "p" "p" "L00_FLOOR"
		 ""	
	 );command-s
	 
	(command-s "_layer" "m" "L00_CEILING"
	 "c" "9" "L00_CEILING"
	 "l" "DASHED" "L00_CEILING"
	 "p" "p" "L00_CEILING"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L90_CEILING"
	 "c" "t" "128,128,128" "L90_CEILING"
	 "l" "CONTINUOUS" "L90_CEILING"
	 "p" "p" "L90_CEILING"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L19_CABLES"
		 "c" "t" "165,165,0" "L19_CABLES"
		 "l" "ACAD_ISO15W100" "L19_CABLES"
		 "p" "n" "L19_CABLES"
		 ""
	 );command-s
	 
	(command-s "_layer" "m" "L90_TEXT_CABLES"
	 "c" "t" "165,165,0" "L90_TEXT_CABLES"
	 "l" "CONTINUOUS" "L90_TEXT_CABLES"
	 "p" "p" "L90_TEXT_CABLES"
	 ""
	 );command-s
	 
  	(command-s "_layer" "m" "L01_WINDOWS_SYMBOL"
		 "c" "72" "L01_WINDOWS_SYMBOL"
		 "l" "CONTINUOUS" "L01_WINDOWS_SYMBOL"
		 "p" "p" "L01_WINDOWS_SYMBOL"
		 ""
	 );command-s
	 
  	(command-s "_layer" "m" "L03_DOOR_SYMBOL"
		 "c" "t" "38,76,0" "L03_DOOR_SYMBOL"
		 "l" "CONTINUOUS" "L03_DOOR_SYMBOL"
		 "p" "p" "L03_DOOR_SYMBOL"
		 ""
	 );command-s
	 
	(command-s "_layer" "m" "L99_SECTIONS"
		 "c" "t" "204,204,204" "L99_SECTIONS"
		 "l" "CONTINUOUS" "L99_SECTIONS"
		 "p" "p" "L99_SECTIONS"
		 ""
	 );command-s
	 
	(command-s "_layer" "m" "L99_REVISION"
		 "c" "t" "255,0,0" "L99_REVISION"
		 "l" "CONTINUOUS" "L99_REVISION"
		 "p" "p" "L99_REVISION"
		 ""
	 );command-s
	 
	(command-s "_layer" "m" "L99_TRANSPORT"
		 "c" "t" "125,165,80" "L99_TRANSPORT"
		 "l" "CONTINUOUS" "L99_TRANSPORT"
		 "p" "p" "L99_TRANSPORT"
		 ""
	 );command-s
	 
	 (command-s "_layer" "m" "L00_TODEL-NOPLOT"
		 "c" "t" "128,128,128" "L00_TODEL-NOPLOT"
		 "l" "CONTINUOUS" "L00_TODEL-NOPLOT"
		 "p" "n" "L00_TODEL-NOPLOT"
		 ""
	 );command-s

	 (command-s "_layer" "m" "L20_FLOOR_MOUNTING_CONCRETE"
		 "c" "232" "L20_FLOOR_MOUNTING_CONCRETE"
		 "l" "CONTINUOUS" "L20_FLOOR_MOUNTING_CONCRETE"
		 "p" "p" "L20_FLOOR_MOUNTING_CONCRETE"
		 ""
	 );command-s
	 
	(command-s "_layer" "m" "L08_DIM_SHIELDING"
	 "c" "73" "L08_DIM_SHIELDING"
	 "l" "CONTINUOUS" "L08_DIM_SHIELDING"
	 "p" "p" "L08_DIM_SHIELDING"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L90_TEXT_SHIELDING"
	 "c" "73" "L90_TEXT_SHIELDING"
	 "l" "CONTINUOUS" "L90_TEXT_SHIELDING"
	 "p" "p" "L90_TEXT_SHIELDING"
	 ""
	 );command-s
	 
	(command-s "_layer" "m" "L00_SECTION"
	 "c" "10" "L00_SECTION"
	 "l" "CONTINUOUS" "L00_SECTION"
	 "p" "p" "L00_SECTION"
	 ""
	 );command-s
	 
	;;;
	; update existing layers
	;;;
	(updateExistingLayers)
	 
	;;;
	; set active layer
	;;;
  	(command-s "_layer"
		 "s" "0"
		 ""
	 );command-s

	;;;
  	; set new group filter for layer
	;;;
	(command-s "_.LAYER" "_filter" "_New" "_Group" "All" "*" "HSCAD" "")
  
 );end defun


(defun updateExistingLayers() 

	;(alert "test updateExistingLayers() function") ; ok

	(command-s "_layer" "L" "HIDDEN2" "L05_DEMOLITION" ""
	)
	
	(command-s "-layer" 
		"C" "22" 
		"L08_DIM_WALL_MOUNTING_ADDED"
		
		"C" "22" 
		"L22_WALL_MOUNTING_ADDED"
		
		"C" "22" 
		"L90_TEXT_WALL_MOUNTING_ADDED"
		
		"C" "10" 
		"L09_MAGNETFIELDS_05mT" ""
	)
	
); endfun



(defun c:myLispApp-duct-opening()

  ; DRAW RECTANGLE / RYSUJ PROSTOKĄT
  (SETQ CENTER (GETPOINT "\nWskaż punkt:")
	 )
  (print "CENTER POINT: ") (princ center)

  (SETQ WIDTH (GETREAL "\nWpisz szerokość:")
	)
  (print "WIDTH: ") (princ width)

  (SETQ HEIGHT (GETREAL "\nWpisz długość:")
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
  
  (command-s "_RECTANGLE" POINT1 POINT2
	   )
	(setq ssRectangle (entget (entlast)))
  
  ; HATCH/KRESKUJ
  (command-s "_-HATCH" "_P" "ANSI37" "2" "0" "_AN" "N" "_S" POINT2 "" "")
	(setq ssHatch (entget (entlast)))
	
  ; SET LAYER / PRZYPISZ DO WARSTWY

  ;(setq layerToUse (getstring "\nUse HSCAD FLOOR MOUNT. ELECT. LAYER? [y/n]: "))
  
  ;(if (or (= layerToUse "y") (= layerToUse "Y"))
	(progn
		(setq ssRectangle (subst  (cons  8  "L20_FLOOR_MOUNTING_ELECT") (assoc 8 ssRectangle)  ssRectangle) )
		(entmod ssRectangle)
		(setq ssHatch (subst  (cons  8  "L20_FLOOR_MOUNTING_ELECT") (assoc 8 ssHatch)  ssHatch) )
		(entmod ssHatch)
	)
  ;)

  (terpri)
) ;END DEFUN







;This method allows user to choose layer and set new transparency in active viewport
(defun c:myLispApp-setLayerTransparency (/)
	(layerTransparency nil nil)
);defun


;sets the transparency value 90 in actual viewport for hscad equipment layers
(defun c:myLispApp-setLayerTransparency90HscadInVp (/)

	;error function
	(defun *error* (msg)
		(princ "error: ")
		(princ msg)
		(myOsmode)
		(l0)
		(princ)
	);defun error

  (setq hscadEqLayers '(
	"L10_FLOOR_MOUNTED"
	"L20_FLOOR_AREA"
	"L20_FLOOR_CONTOUR"
	"L20_FLOOR_MOUNTING"
	"L20_FLOOR_MOUNTING_1"
	"L20_FLOOR_MOUNTING_ADDED"
	"L13_ADD_EQUIPMENT"
	"L11_CEILING_MOUNTED"
	"L21_CEILING_AREA"
	"L21_CEILING_CONTOUR"
	"L21_CEILING_MOUNTING"
	"L21_CEILING_MOUNTING_ADDED"
	"L12_WALL_MOUNTED"
	"L22_WALL_AREA"
	"L22_WALL_CONTOUR"
	"L22_WALL_MOUNTING"
	"L22_WALL_MOUNTING_ADDED"
	"L22_WALL_MOUNTING_WATER"
	);
	);setq


  (foreach x hscadEqLayers
    	(layerTransparency x 90)
	  );forech

 );end defun
 
 
(defun layerTransparency (selectedLayer newTransparency)
  
  (if (= selectedLayer nil) ; if no layer selected
    ;select layer to set new transaprency
	(progn
      	(setq xSelectedEntity (entsel "\nSelect object: ")); return entity name and coordinates
	(setq xEntityData (entget (car xSelectedEntity)));return listed data about entity
  	(setq selectedLayer (cdr (assoc 8 xEntityData)))
      );progn  
  );if

	(if 
		(/= selectedLayer "0")
			(progn
				;write new transprency if it is not already set 
				(if (= newTransparency nil)
					(setq newTransparency (getint "\nNew transparency:"))	
				);if

				;set new transprency for selected layer
				(command-s "vplayer" "tr" newTransparency selectedLayer "c" "")		
			  );progn
		  
			;if selected layer is 0
			(progn
				(princ "Not applicable for layer 0!")
		);progn
	);if


  );end defun
  
;my function wich set osmode to my preferred settings
(defun myOsmode()
	(command-s "osmode" "3815"
	)
);end defun

;my function which set layer to 0
(defun l0()	;set layer 0 active fast

	;todo: unfreeze / unhide
	(setq layer0
	(tblsearch "LAYER" "0")
	);setq

	(command-s
		"-layer" "s" "0" ""
	);end command
)

;ROUTE SKETCHER FUNCTIONALITY
(defun c:myLispApp-route-sketcher( / *error*)

	;error function
	(defun *error* (msg)
		(princ "error: ")
		(princ msg)
		(myOsmode)
		(l0)
		;erase sketched auxiliary center line if ESC button is pressed
		(if 
			(/= nil ss0)
			(progn 
				(princ "\n undo ss0...")
				(princ ss0)
				(command-s "_erase" ss0 "")
			);progn
		);if
		(if 
			(/= nil ss1)
			(progn 
				(princ "\n undo ss1...")
				(princ ss1)
				(command-s "_erase" ss1 "")
			);progn
		);if
		(if 
			(/= nil ss2)
			(progn 
				(princ "\n undo ss1...")
				(princ ss2)
				(command-s "_erase" ss2 "")
			);progn
		);if
		(if 
			(/= nil ss3)
			(progn 
				(princ "\n undo ss1...")
				(princ ss3)
				(command-s "_erase" ss3 "")
			);progn
		);if
		(if 
			(/= nil ss4)
			(progn 
				(princ "\n undo ss1...")
				(princ ss4)
				(command-s "_erase" ss4 "")
			);progn
		);if
		(princ)
	);defun error

	(command "osmode" "0")
	(command "osmode" "4098")

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
	(command "osmode" "0")
  ;(print "so pointsList to send: ") (princ pointsList) ;pointsList ready to send to drawThroughPoints function
  
  (drawThroughPoints pointsList)

  (command "osmode" "0")
  
  (setq ss0 (ssget "L"))
  (setq linesList (list ss0))
  (setq width (getdist "\Enter/Pick the width: "))
  	(command "osmode" "0")
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
  
  (print "\nLinesList: ") (princ linesList)

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