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