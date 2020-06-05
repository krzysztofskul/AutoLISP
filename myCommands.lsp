(defun c:l0()	;set layer 0 active fast

  ;todo: unfreeze / unhide
  (setq layer0
   (tblsearch "LAYER" "0")
    );setq
	
  (command
	"-layer" "s" "0" ""
    );end command
)





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
  (command "osmode" "3815"
   )myrev
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