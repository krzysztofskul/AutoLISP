(defun c:updateExistingLayers() 

	;(alert "test updateExistingLayers() function") ; ok

	(command "_layer" "L" "HIDDEN2" "L05_DEMOLITION" ""
	)
	
	(command "_layer" 
		"C" "T" "165,41,0" 
		"L08_DIM_WALL_MOUNTING_ADDED" 
		"C" "T" "165,41,0" 
		"L22_WALL_MOUNTING_ADDED" 
		"C" "T" "165,41,0" 
		"L90_TEXT_WALL_MOUNTING_ADDED"
		""
	)
	
); endfun