(defun c:setMyNewLayers()

	;;;
	;Function creates and adds new layers
	;
	;List with data of new layers (name color linetype)
	(setq newLayerList 
		(list 
			'("L21_CEILING_MOUNTING_SUBSTRUCTURE_CRAILS" "160" "CONTINUOUS")
			'("L21_CEILING_MOUNTING_SUBSTRUCTURE_DCS" "160" "CONTINUOUS")
			'("L21_CEILING_MOUNTING_SUBSTRUCTURE_ADDS" "160" "CONTINUOUS")
			'("L08_DIM_FLOOR_MOUNTING" "MAGENTA" "CONTINUOUS")
			'("L08_DIM_MAGNETFIELDS_05mT" "10" "CONTINUOUS")
			'("L08_DIM_COLLISION_AREA" "8" "CONTINUOUS")
			'("L90_TEXT_MAGNETFIELDS_05mT" "10" "CONTINUOUS")
			'("L99-50kg" "190" "CONTINUOUS")
			'("L99-200kg" "190" "CONTINUOUS")
			'("L99-900kg" "190" "CONTINUOUS")
			'("L99-4500kg" "190" "CONTINUOUS")
			
		);list
	);setq

	;Loop which creates new layers using data from given list
	(foreach layer newLayerList
			(command "_layer" "m" (car layer)
			 "c" (cadr layer) (car layer)
			 "l" (caddr layer) (car layer)
			 "p" "p" (car layer)
			 ""
			 );command
	);foreach

	;;;
	; set new layers - old
	;;;
	
	(command "_layer" "m" "-INFO--ROOM"
	 "c" "8" "-INFO--ROOM"
	 "l" "CONTINUOUS" "-INFO--ROOM"
	 "p" "p" "-INFO--ROOM"
	 ""
	 );command
	 
	(command "_layer" "m" "-INFO--EQUIPMENT"
	 "c" "8" "-INFO--EQUIPMENT"
	 "l" "CONTINUOUS" "-INFO--EQUIPMENT"
	 "p" "p" "-INFO--EQUIPMENT"
	 ""
	 );command
	 
	(command "_layer" "m" "-INFO--DOOR&WINDOWS"
	 "c" "8" "-INFO--DOOR&WINDOWS"
	 "l" "CONTINUOUS" "-INFO--DOOR&WINDOWS"
	 "p" "p" "-INFO--DOOR&WINDOWS"
	 ""
	 );command
	
	(command "_layer" "m" "L08_DIM_CEILING_MOUNTING"
	 "c" "t" "0,191,255" "L08_DIM_CEILING_MOUNTING"
	 "l" "CONTINUOUS" "L08_DIM_CEILING_MOUNTING"
	 "p" "p" "L08_DIM_CEILING_MOUNTING"
	 ""
	 );command	
	 
	 (command "_layer" "m" "L08_DIM_WALL_MOUNTING"
	 "c" "t" "255,127,0" "L08_DIM_WALL_MOUNTING"
	 "l" "CONTINUOUS" "L08_DIM_WALL_MOUNTING"
	 "p" "p" "L08_DIM_WALL_MOUNTING"
	 ""
	 );command
	 
	(command "_layer" "m" "L00_LAYOUT"
	 "c" "t" "102,102,102" "L00_LAYOUT"
	 "l" "CONTINUOUS" "L00_LAYOUT"
	 "p" "p" "L00_LAYOUT"
	 ""
	 );command
	 
	(command "_layer" "m" "L90_TEXT_ROOM_SYMBOL"
	 "c" "t" "102,102,102" "L90_TEXT_ROOM_SYMBOL"
	 "l" "CONTINUOUS" "L90_TEXT_ROOM_SYMBOL"
	 "p" "p" "L90_TEXT_ROOM_SYMBOL"
	 ""
	 );command
	 
  	(command "_layer" "m" "L90_TEXT_CEILING_MOUNTING"
	 "c" "t" "0,191,255" "L90_TEXT_CEILING_MOUNTING"
	 "l" "CONTINUOUS" "L90_TEXT_CEILING_MOUNTING"
	 "p" "p" "L90_TEXT_CEILING_MOUNTING"
	 ""
	 );command
	 
    (command "_layer" "m" "L90_TEXT_WALL_MOUNTING"
	 "c" "t" "255,127,0" "L90_TEXT_WALL_MOUNTING"
	 "l" "CONTINUOUS" "L90_TEXT_WALL_MOUNTING"
	 "p" "p" "L90_TEXT_WALL_MOUNTING"
	 ""
	 );command
	 
      	(command "_layer" "m" "L90_TEXT_FLOOR_MOUNTING"
	 "c" "t" "255,0,255" "L90_TEXT_FLOOR_MOUNTING"
	 "l" "CONTINUOUS" "L90_TEXT_FLOOR_MOUNTING"
	 "p" "p" "L90_TEXT_FLOOR_MOUNTING"
	 ""
	 );command
	 
	(command "_layer" "m" "L90_TEXT_ROOM_NAME"
	 "c" "t" "102,102,102" "L90_TEXT_ROOM_NAME"
	 "l" "CONTINUOUS" "L90_TEXT_ROOM_NAME"
	 "p" "p" "L90_TEXT_ROOM_NAME"
	 ""
	 );command
	 
	(command "_layer" "m" "L00_WALLS_NEW"
	 "c" "12" "L00_WALLS_NEW"
	 "l" "CONTINUOUS" "L00_WALLS_NEW"
	 "p" "p" "L00_WALLS_NEW"
	 ""
	 );command
	 
	(command "_layer" "m" "L00_WALLS"
		 "c" "7" "L00_WALLS"
		 "l" "CONTINUOUS" "L00_WALLS"
		 "p" "p" "L00_WALLS"
		 ""	
	 );command
	 
	(command "_layer" "m" "L00_FLOOR"
		 "c" "white" "L00_FLOOR"
		 "l" "CONTINUOUS" "L00_FLOOR"
		 "p" "p" "L00_FLOOR"
		 ""	
	 );command
	 
	(command "_layer" "m" "L00_CEILING"
	 "c" "9" "L00_CEILING"
	 "l" "DASHED" "L00_CEILING"
	 "p" "p" "L00_CEILING"
	 ""
	 );command
	 
	(command "_layer" "m" "L90_CEILING"
	 "c" "t" "128,128,128" "L90_CEILING"
	 "l" "CONTINUOUS" "L90_CEILING"
	 "p" "p" "L90_CEILING"
	 ""
	 );command
	 
	(command "_layer" "m" "L19_CABLES"
		 "c" "t" "165,165,0" "L19_CABLES"
		 "l" "ACAD_ISO15W100" "L19_CABLES"
		 "p" "n" "L19_CABLES"
		 ""
	 );command
	 
	(command "_layer" "m" "L90_TEXT_CABLES"
	 "c" "t" "165,165,0" "L90_TEXT_CABLES"
	 "l" "CONTINUOUS" "L90_TEXT_CABLES"
	 "p" "p" "L90_TEXT_CABLES"
	 ""
	 );command
	 
  	(command "_layer" "m" "L01_WINDOWS_SYMBOL"
		 "c" "72" "L01_WINDOWS_SYMBOL"
		 "l" "CONTINUOUS" "L01_WINDOWS_SYMBOL"
		 "p" "p" "L01_WINDOWS_SYMBOL"
		 ""
	 );command
	 
  	(command "_layer" "m" "L03_DOOR_SYMBOL"
		 "c" "t" "38,76,0" "L03_DOOR_SYMBOL"
		 "l" "CONTINUOUS" "L03_DOOR_SYMBOL"
		 "p" "p" "L03_DOOR_SYMBOL"
		 ""
	 );command
	 
	(command "_layer" "m" "L99_SECTIONS"
		 "c" "t" "204,204,204" "L99_SECTIONS"
		 "l" "CONTINUOUS" "L99_SECTIONS"
		 "p" "p" "L99_SECTIONS"
		 ""
	 );command
	 
	(command "_layer" "m" "L99_REVISION"
		 "c" "t" "255,0,0" "L99_REVISION"
		 "l" "CONTINUOUS" "L99_REVISION"
		 "p" "p" "L99_REVISION"
		 ""
	 );command
	 
	(command "_layer" "m" "L99_TRANSPORT"
		 "c" "t" "125,165,80" "L99_TRANSPORT"
		 "l" "CONTINUOUS" "L99_TRANSPORT"
		 "p" "p" "L99_TRANSPORT"
		 ""
	 );command
	 
	 (command "_layer" "m" "-INFO-TODEL-NOPLOT"
		 "c" "t" "128,128,128" "-INFO-TODEL-NOPLOT"
		 "l" "CONTINUOUS" "-INFO-TODEL-NOPLOT"
		 "p" "n" "-INFO-TODEL-NOPLOT"
		 ""
	 );command

	 (command "_layer" "m" "L20_FLOOR_MOUNTING_CONCRETE"
		 "c" "232" "L20_FLOOR_MOUNTING_CONCRETE"
		 "l" "CONTINUOUS" "L20_FLOOR_MOUNTING_CONCRETE"
		 "p" "p" "L20_FLOOR_MOUNTING_CONCRETE"
		 ""
	 );command
	 
	(command "_layer" "m" "L08_DIM_SHIELDING"
	 "c" "73" "L08_DIM_SHIELDING"
	 "l" "CONTINUOUS" "L08_DIM_SHIELDING"
	 "p" "p" "L08_DIM_SHIELDING"
	 ""
	 );command
	 
	(command "_layer" "m" "L90_TEXT_SHIELDING"
	 "c" "73" "L90_TEXT_SHIELDING"
	 "l" "CONTINUOUS" "L90_TEXT_SHIELDING"
	 "p" "p" "L90_TEXT_SHIELDING"
	 ""
	 );command
	 
	(command "_layer" "m" "L00_SECTION"
	 "c" "10" "L00_SECTION"
	 "l" "CONTINUOUS" "L00_SECTION"
	 "p" "p" "L00_SECTION"
	 ""
	 );command
	 

	 
	;;;
	;set layers for substructure
	;;;
	(setLayersForCeilingSustructure)
	 
	;;;
	; update existing layers
	;;;
	(c:updateExistingLayers)
	 
	;;;
	; set active layer
	;;;
  	(command "_layer"
		 "s" "0"
		 ""
	 );command

	;;;
  	; set new group filter for layer
	;;;
	(command "_.LAYER" "_filter" "_New" "_Group" "All" "*" "HSCAD" "")
	
	;;;
  	; set new group filter for xrefs
	;;;
	(command "_.LAYER" "_filter" "_New" "_Group" "" "" "_XREF" "s" "HSCAD" "x" "")
  
  );end defun
  
(defun setLayersForCeilingSustructure()

	(command "_layer" "m" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_DCS"
	 "c" "160" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_DCS"
	 "l" "CONTINUOUS" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_DCS"
	 "p" "p" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_DCS"
	 ""
	 );command
	
	(command "_layer" "m" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_ADDS"
	 "c" "160" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_ADDS"
	 "l" "CONTINUOUS" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_ADDS"
	 "p" "p" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_ADDS"
	 ""
	 );command
	 
	(command "_layer" "m" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_RAILS"
	 "c" "160" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_RAILS"
	 "l" "CONTINUOUS" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_RAILS"
	 "p" "p" "L08_DIM_CEILING_MOUNTING_SUBSTRUCTURE_RAILS"
	 ""
	 );command
	 
	(command "_layer" "m" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_DCS"
	 "c" "160" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_DCS"
	 "l" "CONTINUOUS" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_DCS"
	 "p" "p" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_DCS"
	 ""
	 );command
	
	(command "_layer" "m" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_ADDS"
	 "c" "160" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_ADDS"
	 "l" "CONTINUOUS" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_ADDS"
	 "p" "p" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_ADDS"
	 ""
	 );command
	 
	(command "_layer" "m" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_RAILS"
	 "c" "160" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_RAILS"
	 "l" "CONTINUOUS" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_RAILS"
	 "p" "p" "L90_TEXT_CEILING_MOUNTING_SUBSTRUCTURE_RAILS"
	 ""
	 );command
	
)