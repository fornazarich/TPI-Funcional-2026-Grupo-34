;; ========================================================
;; FUNCIÓN: Transicion
;; NATURALEZA: Pura (no posee efectos secundarios)
;; ESTRATEGIA: Uso de Cond para cambiar los colores
;; IMPACTO: No destructiva
;; ========================================================

(defun transicion (color-actual cambiar-a)
	(cond 
		 ((and (not (equal color-actual 'en-rojo)) (equal cambiar-a 'rojo)) 
		  (list color-actual "cambiar-a-rojo"))

		((and (not (equal color-actual 'en-amarillo)) (equal cambiar-a 'amarillo)) 
		 (list color-actual "cambiar-a-amarillo"))

		((and (not (equal color-actual 'en-verde)) (equal cambiar-a 'verde)) 
		 (list color-actual "cambiar-a-verde"))

		(t 
		 (list color-actual 'accion-por-defecto)
		)
	)
)
;; ==========================================================
;; FUNCIÓN: Timer
;; NATURALEZA: Pura (no posee efectos secundarios)
;; IMPACTO: No destructiva

;; ========================================================


(defun timer (tiempo-unix-actual)
  (cond
    ((< (rem tiempo-unix-actual 216) 90)
     (list (rem tiempo-unix-actual 216) "cambiar-a-rojo"))

    ((< (rem tiempo-unix-actual 216) 96)
     (list (rem tiempo-unix-actual 216) "cambiar-a-amarillo"))

    (t
     (list (rem tiempo-unix-actual 216) 'accion-por-defecto))
  )
)
