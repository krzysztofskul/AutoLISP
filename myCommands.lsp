(defun c:l0()	;set layer 0 active fast

  ;todo: unfreeze / unhide
  (setq layer0
   (tblsearch "LAYER" "0")
    );setq
	
  (command-s
	"-layer" "s" "0" ""
    );end command

	(command-s "_.LAYER" "_filter" "_Set" "HSCAD" "")
	
);defun





(defun c:l-info()	;set HSCAD layer -INFO active fast
  (command
	"-layer" "s" "-INFO-" ""
    );end command
  );end defun

(defun c:toGrayHSCAD() ; change service area, min room sizes, movement range layers to gray color
  (command
    "-layer"
    "c" "t" "128,128,128" "L19_SWIVELLING_RANGE"
    "c" "t" "128,128,128" "L19A_MOVEMENTS"
    "c" "t" "128,128,128" "L19B_MIN_ROOM_SIZES"
    "c" "t" "128,128,128" "L19C_SERVICE_AREAS"
    ""
    )
  );end defun

; create a cross fast
(defun c:cross()
	
	(command "osmode" "0")
	(command "blipmode" "0")
	
	(setq center nil)
	(setq corner nil)
	(setq x nil)
	
	(setq center (getpoint "Pick center point: "))

	; mouse pointer tracking	
;	(progn
;		(commad "circle" center 40.0)
;		(while
;			(not 
;				(= 
;					(car 
;						(setq pt2 (grread t15 0))
;						)
;					)
;					30
;				)
;			)
;			(redraw)
;		
;		)
	;)
	;(grdraw center (grread T 15 0) 1 1)
	
	(setq corner (getpoint "Pick corner: "))

	(setq x (distance center corner))
	(setq alfa (angle center corner))
	(setq cornerMir (polar center (+ alfa PI) x))
	(command "_pline" corner cornerMir "")
	(command "_mirror" (ssget "L") "" center (polar center 0.0 10.0) "n" "")
	
	(c:myOsmode)
	(command "blipmode" "1")
	
	(terpri)
)

(defun c:myOsmode()
  (command-s "osmode" "3815"
   )
  );end defun
 
 
(defun c:myRevCloud()

	(defun c:drawMyRevCloud(arcLengthMin arcLengthMax)
		(print "arcLengthMin: ") (princ arcLengthMin)
		(print "arcLengthMax: ") (princ arcLengthMax)
		;(command "ANNOREVISIONCLOUDADD" "a" (/ (+ arcLengthMin arcLengthMax) 2.0) "w" 0.05 "t" "p")
		;(command "REVCLOUD" "a" arcLengthMin arcLengthMax "p" "s" "c")
		(command "_layer"
			"s" "L99_REVISION" ""
		)
		(command "revcloud")
		(while 
			(= (getvar "cmdactive") 1)
			(command pause)
		)
		(c:l0)
	)

	(setq arcLengthMin 25)
		;(print "arcLengthMin: ") (princ arcLengthMin) (terpri)
	(setq arcLengthMax 35)
		;(print "arcLengthMax: ") (princ arcLengthMax) (terpri)

	(c:drawMyRevCloud arcLengthMin arcLengthMax)
	

)

(defun c:dimSMNSH( / *error*)

	;error function
	(defun *error* (msg)
		(princ "error: ")
		(princ msg)
		(c:myOsmode)
		(c:l0)
		(princ)
	);defun error

  (setq dimType
	 (getstring "CHOOSE OPTION: [G]eneral dim. / [P]roject dim. / [B]asement concrete / [F]loor electr. / [C]eiling electr. / [W]all electr. (or cm/cma/cms or wm/wma) : ")
  )
  (princ "\ndimType = : ")(princ dimType)
  
  ; save old layer
  (setq oldlayer (getvar "CLAYER"))

  ; set dim style and dim layer
  (cond
    	(
	 	(or (= dimType "g") (= dimType "G"))
	 	(setq dimStyle "000-SMNSH--DIM-GENERAL")
	 	(setq dimLayer "L08_DIMENSIONING")
	 )
    	(
	 	(or (= dimType "p") (= dimType "P"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_PROJECT")
	 )
	 (
	 	(or (= dimType "b") (= dimType "B"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_FLOOR_MOUNTING_CONCRETE")
	 )
	 (
	 	(or (= dimType "f") (= dimType "F"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_FLOOR_MOUNTING_ELECT")
	 )
	 (
	 	(or (= dimType "c") (= dimType "C"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_CEILING_MOUNTING_ELECT")
	 )
	 (
	 	(or (= dimType "cm") (= dimType "CM"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_CEILING_MOUNTING")
	 )
	 (
	 	(or (= dimType "cma") (= dimType "CMA"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_CEILING_MOUNTING_ADDED")
	 )
	 (
	 	(or (= dimType "cms") (= dimType "CMS"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE")
	 )
	 (
	 	(or (= dimType "w") (= dimType "W"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_WALL_MOUNTING_ELECT")
	 )
	 (
	 	(or (= dimType "wma") (= dimType "WMA"))
	 	(setq dimStyle "000-SMNSH--DIM-PROJECT")
	 	(setq dimLayer "L08_DIM_WALL_MOUNTING_ADDED")
	 )
	(t
	 	(princ "\nYou didnt choose corrct option. Try again!")
	   	(setvar "CLAYER" oldlayer)
	 	(quit)
	 )
   );end cond

  ; if layer exist -> draw dimension
  (if (tblsearch "LAYER" dimLayer)
    (progn
      (setvar "CLAYER" dimLayer)
      (command "DIMSTYLE" "r" dimStyle)
      (princ "\nPick dim points ...")
      (command "DIMLINEAR")
      ; wait with command for user action:
		(while 
			(= (getvar "cmdactive") 1)
			(command pause)
		);endwhile
    ); end progn
    ; if layer doesnt exist
    (princ "NO LAYER FOUND!")     
   );end if
  

  ; resotre old layer
  (setvar "CLAYER" oldlayer)
  
 
 );end defun dimGeneral()