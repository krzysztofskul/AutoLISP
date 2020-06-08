(defun c:changeLineForWallLayer()

	(setq newLayer "L00_WALLS"
	)
	
	(setq lineSelected (entsel "\nGet line: ")
	)
	(setq lineData (entget (car lineSelected))
	)
	
	; info about line from entsel
	(princ "\nLine selected: ") (princ (car lineSelected))
	(princ " By picking point: ") (princ (cadr lineSelected))
	; info about line data form entger car
	(princ "\nLine data chosen: "
	)
	(princ lineData)
	
	;call function
	(changeLayerOfObject lineSelected newLayer)
	
	(terpri)
)


(defun changeLayersOfObjectList(objectListToChange newLayer)

	(princ "\n---\nChange layers()...")
	(setq objectList objectListToChange)
	
	(foreach i objectList
		(changeLayerOfObject i newLayer)
	)

)

(defun changeLayerOfObject(object newLayer)

	(princ "\n---\nChanging layer...")
	;(setq objectData (entget object))
	(setq objectData (entget (car object)))

	(princ "\n---\nObject data to change: ") (princ objectData)
	(princ "\n---\nNew Layer: ") (princ newLayer)

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