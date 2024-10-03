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
				(command "vplayer" "tr" newTransparency selectedLayer "c" "")		
			  );progn
		  
			;if selected layer is 0
			(progn
				(princ "Not applicable for layer 0!")
		);progn
	);if


  );end defun

;This method allows user to choose layer and set new transparency in active viewport
(defun c:setLayerTransparency (/)
	(layerTransparency nil nil)
);defun

;sets the transparency value 90 in actual viewport for hscad equipment layers
(defun c:setLayerTransparency90HscadInVp (/)

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
	);
	);setq


  (foreach x hscadEqLayers
    	(layerTransparency x 90)
	  );forech

 );end defun