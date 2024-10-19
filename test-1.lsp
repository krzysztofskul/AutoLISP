(defun c:chlayer (/		   oDocelowe	    oZrodlowy
		  n		   index	    oDoceloweDef
		  oZrodlowyDef	   oDoceloweWarstwa oZrodlowyWarstwa
		  oZrodlowyUpdate
		 )
  (prompt "\nWskaz element(elementy) do zmiany (potwierdŸ ENTRER): ")
  (setq oDocelowe (ssget))		;elementy do zmiany - docelowe
  (setq oZrodlowy (entsel "\nWskaz obiekt na warstwie zrodlowej: "))
					;wskazanie obiektu zrodlowego
  (setq n (sslength oDocelowe))		;zliczanie elementów docelowych (ilosc)
  (setq index 0)			;ustawienie zmiennej "index" na 0
  (setq oZrodlowyDef (entget (car oZrodlowy)))
					;pobranie definicji obiektu zrodlowego
  (setq oZrodlowyWarstwa (assoc 8 oZrodlowyDef))
					;pobranie informacji o warstwie obiektu zrodlowego
  (repeat n				;powtorzenie tyle razy ile zostalo wybranych obiektow
    (setq oDoceloweDef (entget (ssname oDocelowe index)))
					;pobranie defeinicji kolejnego obiektu docelowego
    (setq oDoceloweWarstwa (assoc 8 oDoceloweDef))
					;pobranie informacji o warstwie kolejnego obiektu docelowego

    (setq oZrodlowyUpdate
	   (subst oZrodlowyWarstwa
		  oDoceloweWarstwa
		  oDoceloweDef
	   )
    )					;podmiana inforamcji o warstwie w kolejnym obiekcie docelowym



    (entmod oZrodlowyUpdate)		;odswiezenie zaktualizowanych danych
    (setq index (+ index 1))		;przejscie do kolejnego elementu
  )
  (princ)
)

;wybór elementów do zmiany
;wybór elementu Ÿród³owego
;odczytywanie warstwy na któr¹ prznosimy - element Ÿród³owy
;petla tyle razy ile wybralismy elementow
;podstawienie wlasciwosci warstwy dla pojedynczego elementu na nowy
;aktualizacja bazy danych (entmod)