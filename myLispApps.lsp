;This function creates layers to my prefferd confugiration
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
 
 	;;;
  	; set new group filter for xrefs
	;;;
	(command "_.LAYER" "_filter" "_New" "_Group" "" "" "_XREF" "s" "HSCAD" "x" "")
 
	(myLispApp-set-my-new-layerstates)
 
 );end defun


;This function upates created layers to my prefferd style
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






(defun myLispApp-set-my-new-layerstates (/)
	(command "layer" "state" "save" "000-SMNSH-CLR-0" "" "" "")
	(command "layer" "state" "save" "000-SMNSH-CLR-1" "" "" "")
	(command "layer" "state" "save" "000-SMNSH-CLR-2" "" "" "")
);

;Creats opening for floor duct OLD VERSION
(defun c:myLispApp-duct-floor-opening ()

	;Draw rectangle
	(c:myLispApp-draw-rectangle)
	
	;Get last drawn selection set
	(setq ssRectangle (entget (entlast)))
	(setq rectangle (ssget "L"))
	
	;Set layer
	(setq ssRectangle (subst  (cons  8  "L20_FLOOR_MOUNTING_ELECT") (assoc 8 ssRectangle)  ssRectangle) )
	(entmod ssRectangle)
	
	;Hatch (inside this function)
	; (command "_-HATCH" "_P" "ANSI37" "2" "0" "_AN" "N" "_S" POINT2 "" "")
	; (setq ssHatch (entget (entlast)))
	; (setq ssHatch (subst  (cons  8  "L20_FLOOR_MOUNTING_ELECT") (assoc 8 ssHatch)  ssHatch) )
	; (entmod ssHatch)
	
	;Hatch using outise functionappl
	;(setq rectangle (ssget "L"))
	(myLispApp-duct-floor-hatch rectangle)

);defun







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
	"L19A_MOVEMENTS"
	"L19B_MIN_ROOM_SIZES"
	"L19C_SERVICE_AREAS"
	"L19_SWIVELLING_RANGE"
	"-INFO-"
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

;Set OSMODE at 0
(defun osmode0 ()
	(command "osmode" "0")
);defun

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

;DUCT SKETCHER FUNCTIONALITY
(defun c:myLispApp-duct-sketcher( / *error*)

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
    	(setq NxtPnt (getpoint FstPnt "\nSelect next point [ENTER - finish duct]: "))
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
	
	(ductType)

  	(command
		"-layer" "s" "0" ""
	)

  (command "osmode" "3815")
  
);end defun
(defun ductType()

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
  

 ;This function sets plot style for actual layout
 (defun c:myLispApp-set-plot-style (/)
 
	(setq paperSize (getstring "Specify paper size [A0] / [A1] / [A2] / [A3] / [A4P] / [A4L] or ENTER for null: ")
	);setq
	
	(setq deviceName "PDF-XChange Standard")
	
	(setq plotStyleTable "HP-Monochrom.ctb")
 
	(command "-pagesetup" deviceName paperSize "M" "L" "N" "L" "" "" "Y" plotStyleTable "Y" "N" "Y" "N")
 
	(myLispApp-plot-transparency)
 
 );defun

;This function sets plot transparency for all layouts
(defun c:myLispApp-plot-transparency (/ aDoc Layouts itm)

	(vl-load-com)

	(defun LayoutTransparency (layout OnOff / xType xData)
	  (setq xData (vlax-make-safearray vlax-vbVariant '(0 . 1)))
	  (setq xType (vlax-make-safearray vlax-vbInteger '(0 . 1)))
	  (vlax-safearray-fill xData (list (vlax-make-variant "PLOTTRANSPARENCY")(vlax-make-variant OnOff)))
	  (vlax-safearray-fill xType (list 1001 1071))
	  (vla-setXdata layout xType xData)
	  (entmod (entget (vlax-vla-object->ename layout) '("*")))
	);defun

	(setq	aDoc (vla-get-activedocument (vlax-get-acad-object))
		Layouts (vla-get-layouts aDoc)
	);setq
	
	(foreach
	   itm
		(layoutlist)
		; or:
		;		  (append '("Model") (layoutlist)) ; incl. Model
		(LayoutTransparency (vla-item Layouts itm) 1) ;       1=ON 0=off
	);foreach
	
	(princ)

);defun

;This function gets initial data to draw myrectangle
(defun c:myLispApp-draw-rectangle (/)

	(setq insertionType
		(myLispApp-getInsertionType)
	);	
		
	(setq width (getdist "\nSpecify width: " ))
	(setq height (getdist "\nSpcify height: " ))
	
	(setq insertionPoint
		(getpoint "\nSpecify insertion point for rectangle : ")
	);
	
	(myLispApp-calc insertionType insertionPoint width height)
	
);defun
;This function gets insertion type
(defun myLispApp-getInsertionType (/)
	
	(setq insertionType
		(getstring "\nSpecify insertion type [Center / Top / Left / Right / Bottom / LT left-top / RT right-top / LB left-bottom / RB right-bottom]: ")
	);setq
	
	(cond
		(
		(= (strcase insertionType T) "lt")
		(progn
			(princ "\nInsertion point LeftTop ok!")
		)
		)
		
		(
		(= (strcase insertionType T) "t")
		(progn
			(princ "\nInsertion point Top ok!")
		)
		)
		
		(
		(= (strcase insertionType T) "rt")
		(progn
			(princ "\nInsertion point RightTop ok!")
		)
		)
		
		(
		(= (strcase insertionType T) "c")
		(progn
			(princ "\nInsertion point Center ok!")
		)
		)
		
		(
		(= (strcase insertionType T) "l")
		(progn
			(princ "\nInsertion point Left ok!")
		)
		)
		
		(
		(= (strcase insertionType T) "r")
		(progn
			(princ "\nInsertion point Right ok!")
		)
		)

		(
		(= (strcase insertionType T) "lb")
		(progn
			(princ "\nInsertion point LeftBottom ok!")
		)
		)

		(
		(= (strcase insertionType T) "b")
		(progn
			(princ "\nInsertion point Bottom ok!")
		)
		)

		(
		(= (strcase insertionType T) "rb")
		(progn
			(princ "\nInsertion point RightBottom ok!")
		)
		)
		
		(t 
			(princ "\n*ERROR* : wrong insertion point!")
			(myLispApp-getInsertionPoint)
		)
		);cond
		
	return insertionType

);

;This function calculate start point from insertionType and calls function drawing rectangle from insertion point
(defun myLispApp-calc (insertionType insertionPoint width height / )

	;TODO
	;change if to case
	;add error handlers for esc key and for other key pressed

	(cond
		(
		(= (strcase insertionType T) "lt")
		(setq startPointLeftTop insertionPoint)
		)
		
		(
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
		)
		
		(
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
		)
		
		(
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
		)
		
		(
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
		)
		
		(
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
		)

		(
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
		)

		(
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
		)

		(
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
		)
		
		(t 
			(princ "\n*ERROR* : wrong option!")
		)
		
	);cond
	
	;(princ "\Start point left: ")(princ startPointLeftTop)
	(myLispApp-draw-rectangle startPointLeftTop width height)

);defun

;This function draws rectangle from start point
(defun myLispApp-draw-rectangle (startPointLeftTop width height / )

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
	
	;get last entity
	;(setq rectangle (ssget "L"))
	
	(command "osmode" "3815")

	;draw hatch in last entity
	;(myLispApp-hatch rectangle)

	return (setq rectangle (ssget "L"))

);defun

;This function creates hatch for given region. Hatch type is specified by user and choosen from my frequently used types
(defun myLispApp-duct-floor-hatch ( region /)

	(osmode0)
	
	(command 
		"-hatch" "p" "ANSI37" "0.4" "0" "an" "y" "a" "a" "y" "" "la" "0" "co" 8 "" "s" region "" ""
	)

	(setq ssHatch (entget (entlast))) ;get last hatch
	(setq ssHatch (subst  (cons  8  "L20_FLOOR_MOUNTING_ELECT") (assoc 8 ssHatch)  ssHatch) ) ;hatch
	(entmod ssHatch) ;update data
	
	(myOsmode)
	
	(terpri)


);