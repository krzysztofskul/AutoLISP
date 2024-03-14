(defun c:getBlockName()

	(cdr 

		(assoc 
			
			'2
			(entget (car (entsel)))
		)
	
	)

)


(defun c:renameBlock()

	(setq oldBlockName (c:getBlockName))
	
	(print "oldblock name: ")
	(princ oldBlockName)

	(command 
		"-rename" "b" oldBlockName
	)

	(terpri)

)

(defun c:getBlockNameOriginal (/ x xData blockName obj originalBlockName originalBlockNameNew)

(vl-load-com)
(setq acadDocument (vla-get-activedocument (vlax-get-acad-object)))
  
;select block
(princ "\nSelect block..")
(setq x (entsel))

;get blok name
(setq xData (entget (car x)))
(setq blockName (cdr(assoc 2 xData)))
  (princ "\nBlock name: ")
  (princ blockName)

  
  ;get original block name
  ;(setq obj (vlax-ename->vla-object (Car (entsel))))
  (setq obj (vlax-ename->vla-object (Car x)))
  (setq originalBlockName (vla-get-effectivename obj))
  (princ "\nBlock name original: ")
  (print originalBlockName)


  ;test change layer
  ;(setq xData (subst (cons 8 "1") (assoc 8 xData) xData))
  ;(entmod xData)
  
  ;rename block name
  ;(setq blockNameNew (getstring "\nNew block name:"))
  ;(setq xData (subst (cons 2  blockNameNew) (assoc 2 xData) xData))
  ;(entmod xData)
  ;(princ (assoc 2 xData))
 
  
  ;rename original block name
  ;(setq objNameNewOriginal (getstring "\nNew original block name:"))
  ;(vlax-put-property obj (vla-get-effectivename obj) objNameNewOriginal)
  ;(vla-update obj)
  
  
 (princ)


);end defun