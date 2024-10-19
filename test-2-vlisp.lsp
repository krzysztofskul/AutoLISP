(defun c:vlisptest (/)


  (vl-load-com)
  (setq acadDocument (vla-get-activedocument (vlax-get-acad-object)))
  (setq theLayers (vla-get-layers acadDocument))

  (setq i 0)
      (repeat (vla-get-count theLayers)
      (setq aLayer (vla-item theLayers i))
      (princ (vla-get-name aLayer))
      (terpri)
      (setq i (1+ i))
      );setq
  
  

  );end defun


; gets transparency in percentage 
(defun c:getLayerTransparency (layerName / layer transparency) 
  (setq layer (tblobjname "LAYER" layerName)) 
  ; get the XData of AcCmTransparency    
  (setq transparency (cdr (assoc 1071 (cdar (cdr (assoc -3 
    (entget layer '("AcCmTransparency")))))))) 
  (if (= transparency nil) 
    ; if we did not get a value it must be the default 0% 
    (setq transparency 0) 
    ; if we got a value then calculate from it 
    (progn 
      ; get the lower byte of the value 0..255 
      ; (100%..0% in the AutoCAD user interface) 
      (setq transparency (lsh (lsh transparency 24) -24)) 
      ; convert the value to a percentage 
      (setq transparency (fix (- 100 (/ transparency 2.55))))    
    ) ; (progn 
  ) ; (if  
)

(defun c:testGet (/ ent layerName transparency) 
  (setq ent (car (entsel))) 
  (setq layerName (cdr (assoc 8 (entget ent))))
  (setq transparency (getLayerTransparency layerName)) 
  (princ transparency) 
  (princ) 
)