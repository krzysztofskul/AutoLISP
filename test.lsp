(defun c:test-entity()
	
	(command "line" '(0 0) '(100 50) "" 
	)

	(setq lineLast (entlast)
	)

	(setq lineSel (entsel)
	)
	
	(setq lineSelName (car (entsel))
	)

	(princ "\nLine last entlast: ")
	(princ lineLast)

	(princ "\nLine sel entsel: ")
	(princ lineSel)
	
	(princ "\nLine sel name car entsel: ")
	(princ lineSelName)

	
	(princ "\nLine data from entlast: ")
	(princ lineLast)
	
	
	(setq lineData (entget lineLast)
	)
	(princ "\nLine data: ")
	(princ lineData)
	
	(setq 
		lineData
		(subst (cons 8 "L00_WALLS") (assoc 8 lineData) lineData
		)
		
	)
	
	(entmod lineData)
	
	(princ "\nLine data after changes: ")
	(princ lineData)	
	(terpri)
	
);end


(defun c:test-functionNewLayer()

	;;; LINE TO CHANGE
	(command "line" '(0 0) '(-100 -50) ""
	)
	;(changeLayer line "L00_WALLS")
	
	; (setq line (entlast)
	; )
	; (setq lineData (entget line)
	; )
	;;; END
	
	;;; LIST OF PLINES TO CHANGE
	;(setq objectsToChange (list nil))
	(setq objectsToChange (list))
	
	
	(command "pline" '(300 0) '(300 -50) '(350 -100) ""
	)
	(setq object (entlast))
	(princ "\n---\nObject: ") (princ object)
	(setq objectsToChange (append objectsToChange (list object)))
	;(setq objectsToChange (cdr objectsToChange))
	(command "pline" '(400 0) '(400 -50) '(450 -100) ""
	)
	(setq object (entlast))
	(setq objectsToChange (append objectsToChange (list object)))
	(command "pline" '(500 0) '(500 -50) '(550 -100) ""
	)
	(setq object (entlast))
	(setq objectsToChange (append objectsToChange (list object)))
	

	(princ "\n---\nObjects to change: ")(princ objectsToChange)	
	
	(changeLayersOfObjectList objectsToChange "L00_WALLS")
	
	; (setq newLayer "L00_WALLS")
	; (foreach i objectsToChange
		; (setq objectData (entget i))

		; (princ "\n---\nObject data to change: ") (princ objectData)
		; (princ "\n---\nNew Layer: ") (princ newLayer)

		; (setq objectData
			; (subst
				; (cons 8 newLayer)
				; (assoc 8 objectData)
				; objectData
			; )
		; )
		; (entmod objectData)
	; )

	
	;;;END
	
	(terpri)
	
)

(defun changeLayersOfObjectList(objectListToChange newLayer)

	(princ "\n---\nChange layers()...")
	(setq objectList objectListToChange)
	
	(foreach i objectList
		(changeLayer i newLayer)
	)

)

(defun changeLayerOfObject(object newLayer)

	(princ "\n---\nCange layer()...")
	(setq objectData (entget object))

	; (princ "\n---\nObject data to change: ") (princ objectData)
	; (princ "\n---\nNew Layer: ") (princ newLayer)

	(setq objectData
		(subst
			(cons 8 newLayer)
			(assoc 8 objectData)
			objectData
		)
	)
	
	(entmod objectData)

	; (princ "\n---\nObject data after changes: ") (princ objectData)

	(terpri)

)

(defun c:test-grread()

	(setq x (list 0,0)
	)
	(command "line" (list 0 0) (list 100 0) "")
	; (princ (grread t 1)
	; )
	
	; (command "._pline")
	; (while (= 1 (getvar "cmdactive")) ;wait until _pline command finishes
		; (command pause)
	; )
		;offset spine
	; (command "_offset" pause (ssget "L"))
	; (while 
		; (= 1 (getvar "cmdactive"))
		; (command pause)
	; )
	
	; (setq pt2 (list nil))
	(setq x1 (getpoint "get x1: "))
	(setq x2 x1)
	(princ "x1:") (princ x1)
	(princ "x2:") (princ x2)
	(while 
		(=
			; < 
			; (car
				; (cadr
					; (setq x 
						; (grread t 1
						; )
					; )
				; )
			; )
			; 100
			(setq x2 (getpoint "\nget x2:"))
			x1
		)	
		(command "erase" (entlast) "")
		; (princ (cdr (grread t 1)))
		(command "pline"  
			(list 0 0) 
			(car (cdr (grread t 1))
			)
			""
		)
		;(redraw (entlast))

	)

	(terpri)
)