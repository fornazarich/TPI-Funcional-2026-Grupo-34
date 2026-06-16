;; ========================================================
;; FUNCIÓN: Transicion
;; NATURALEZA: Pura (no posee efectos secundarios)
;; ESTRATEGIA: Uso de Cond para cambiar los colores
;; IMPACTO: No destructiva
;; ========================================================

(defun transicion (color-actual cambiar-a)
	(cond 
		 ((and (not (equal color-actual 'en-rojo)) (equal color-actual 'amarillo) (equal cambiar-a 'rojo)) 
		  (list color-actual "cambiar-a-rojo"))

		((and (not (equal color-actual 'en-amarillo)) (equal cambiar-a 'amarillo)) 
		 (list color-actual "cambiar-a-amarillo"))

		((and (not (equal color-actual 'en-verde)) (equal color-actual 'amarillo) (equal cambiar-a 'verde)) 
		 (list color-actual "cambiar-a-verde"))

		(t 
		 (list color-actual 'accion-por-defecto)
		)
	)
)

;; ==========================================================
;; FUNCIÓN: Timer
;; NATURALEZA: Impura (Ya que devolvera un color dependiendo del timestamp)
;; ESTRATEGIA: Orden Inferior (implementa cond)
;; IMPACTO: No destructiva
;; ==========================================================
(defun timer(timestamp)
  (cond
    ((< (rem timestamp 216) 90) 'Rojo)
    ((< (rem timestamp 216) 96) 'Amaraillo)
    (t 'Verde)
  )
)

;; ========================================================
;; FUNCIÓN: logging
;; NATURALEZA: Impura (Ya que devuelve un mensaje en la pantalla con el tiempo y dos colores)
;; ESTRATEGIA: Orden Inferior (implementa format)
;; IMPACTO: No destructiva 
;; ========================================================
(defun logging (timestamp color-actual cambiar-a)
	(format t "Tiempo ~A : la luz ha cambiado de ~A a ~A" timestamp color-actual cambiar-a)
)

;; ==========================================================
;; FUNCIÓN: duracion-ciclo
;; NATURALEZA: Pura (Siempre devuelve el mismo valor entero)
;; ESTRATEGIA: Orden Inferior (utiliza suma)
;; IMPACTO: No destructiva
;; ==========================================================
(defun duracion-ciclo ()
  (+ 90 6 120)
)

;; ========================================================
;; FUNCIÓN: recomendacion-ciclo
;; NATURALEZA: Pura (Ya que solo retorna los simbolos)
;; ESTRATEGIA: Estructura condicional (utiliza cond para evaluar cada caso )
;; IMPACTO: No destructiva 
;; ========================================================
(defun recomendacion-ciclo (duracion-ciclo)
	(cond
		((>  35 duracion-ciclo) 'Bajo)
		((> duracion-ciclo 150) 'Alto)
		(t 'En-Rango)
	)
)
