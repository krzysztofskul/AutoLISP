(defun c:updateExistingLayers() 

	;(alert "test updateExistingLayers() function") ; ok

	(command "_layer" "L" "HIDDEN2" "L05_DEMOLITION" ""
	)
	
	(command "-layer" 
		"C" "22" 
		"L08_DIM_WALL_MOUNTING_ADDED"
		
		"C" "22" 
		"L22_WALL_MOUNTING_ADDED"
		
		"C" "22" 
		"L90_TEXT_WALL_MOUNTING_ADDED"
		
		"C" "10" 
		"L09_MAGNETFIELDS_05mT"
		
		"C" "8"
		"A_Annotations_NonPlot"
		"TR" "90"
		"A_Annotations_NonPlot" ""
	)
	
); endfun