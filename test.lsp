(defun c:test_myClearBlock ( / xBlockName)

(princ "\ntest...myClearBlock")

(setq xEntityData (getEntityData))
(setq xBlockName (getBlockNameByEntityData xEntityData))
(princ "\nReceived block name: ")(princ xBlockName)

(princ)
);defun

(defun getEntityData( / xObjSel xEntityData)

;get selection set of the block
(setq xObjSel (entsel "\nSelect block.."))
;get entity of the block by entity name
(setq xEntityData (entget (car xObjSel)))

return xEntityData

);defun


(defun getBlockNameByEntityData (xEntityData / xEntityData obj blockName)

(vl-load-com)
(setq acadDocument (vla-get-activedocument (vlax-get-acad-object)))

;get blok name
(if 

	;cond
	(/= nil (cdr(assoc 2 xEntityData)))

	(progn ;if
		(setq blockName (cdr(assoc 2 xEntityData)))
		(princ "\nBlock name: ")
		(princ blockName)
	);progn
);if


		(progn ;else
			;get original block name
			(setq obj (vlax-ename->vla-object (car (entsel "\nSelect again.."))))
			(setq originalBlockName (vla-get-effectivename obj))
			(princ "\nBlock name original: ")
			(princ originalBlockName)
		);progn
		
 
  
return blockName


);end defun


;get all blocks and read data about it
(defun c:test_ssgetBlocks()

	;get all blocks
	;(ssget "_X" '((0 . "INSERT")))
	
    (if (setq s (ssget '((0 . "INSERT"))))
        (progn
            (setq i 0
                  n (sslength s)
            )
			(princ n)
            (while (< i n)
			
				;TODO
				; MAKE BLOCK EXPLDABLE
				;;(setq blockName (cdr(assoc 2 ed)))
				(setq obj (vlax-ename->vla-object (car (entsel "\nSelect again.."))))
				(setq blockName (vla-get-effectivename obj))
				(princ "\nBlock name original: ")
				(princ blockName)
				(princ "\nTrying to explode block ") (princ blockName)
				(_explodable blockName)
				
				;TODO
				;; change block to scale uniformly to explode block
				;explmode to 1 ?
				(command "explmode" 1)
			
				;TODO
				;InsUnits (RO) = "Centimeters"
				;https://www.cadtutor.net/forum/topic/8050-help-for-vla-functions-where-to-find/
			
				(setq sstmp (ssadd))
				(ssadd (ssname s i) sstmp)
				(print sstmp)
				(command "_explode" sstmp)
			
                (setq en (ssname s i) ;e=entity name
					ed (entget en) ; ed=entity data
					i (1+ i)
                )
				

			
				; (print s)
                ; (print (ssname s i))
				; (print e)
				; (print x)
				; (setq blockName (cdr(assoc 2 ed)))
				; (print blockName)
            )
        )
    )
    (princ)

		
);defun

(defun _explodable (name / e)
(vl-load-com)
  (and (setq e (tblobjname "block" "idt_flagnote"))
       (setq e (vla-item (vla-get-blocks (vla-get-activedocument (vlax-get-acad-object))) name))
       (vla-put-Explodable e :vlax-true)
	   (princ (vla-get-Explodable e))
	   
  )
)

(vl-load-com)

(defun c:test_BlockScaling() 
	(vl-load-com)
	(setq ent (car (entsel)))
	;; get the block definition ename
	(setq block (cdr (assoc 330 (entget (tblobjname "block" (cdr (assoc 2 (entget ent))))))))
	(princ "\nblock name: ")(princ block)
	;; convert the ename into a vla-object
	(setq block (vlax-ename->vla-object block))
	
	(princ "\nBlock scaling: ")
	(princ (vla-get-BlockScaling block))
	
	;; set the BlockScaling of the block definition
	;(vla-put-BlockScaling block acUniform)
	;(vla-put-BlockScaling block acAny)
)