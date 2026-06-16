;; ========================================================
;; FUNCIÓN: Transicion
;; NATURALEZA: Pura (no posee efectos secundarios)
;; ESTRATEGIA: Uso de Cond para cambiar los colores
;; IMPACTO: No destructiva
;; ========================================================

(defun transicion (color-actual cambiar-a)
	(cond 
		 ((and (not (equal color-actual 'en-rojo)) (equal color-actual 'en-amarillo) (equal cambiar-a 'rojo)) 
		  (list color-actual "cambiar-a-rojo"))

		((and (not (equal color-actual 'en-amarillo)) (not (equal color-actual 'amarillo)) (equal cambiar-a 'amarillo)) 
		 (list color-actual "cambiar-a-amarillo"))

		((and (not (equal color-actual 'en-verde)) (equal color-actual 'en-amarillo) (equal cambiar-a 'verde)) 
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

;; ========================================================
;; FUNCIÓN: ciclos-por-tiempo
;; NATURALEZA: Pura (Muestra la cantidad de ciclos)
;; ESTRATEGIA: Funciones Aritmeticas (Utiliza Suma y Division para el calculo)
;; IMPACTO: No destructiva 
;; ========================================================
(defun ciclos-por-tiempo (cantidad-minutos duracion-ciclo)
	(float (/ (* cantidad-minutos 60) duracion-ciclo))
)

;; ========================================================
;; FUNCIÓN: distribucion temporal 
;; NATURALEZA: Pura (Devuelve los mismos valores)
;; ESTRATEGIA: Orden inferior (Utiliza list)
;; IMPACTO: No destructiva 
;; ========================================================
(defun distribucion-temporal (duracion-ciclo)
	(list 'Rojo (float (* 100 (/ 90 duracion-ciclo))) 
		'Amarillo (float (* 100 (/ 6 duracion-ciclo))) 
		'Verde  (float (* 100 (/ 120 duracion-ciclo))))
	)

;; ======================================================== ITERACION 2 ======================================================== ;; 

; ========================================================
;; FUNCIÓN: transicion (Actualizado Iteracion 2)
;; NATURALEZA: Pura (Ya que devuelve una lista segun la accion a realizar sin efectos secundarios)
;; ESTRATEGIA: Estructura condicional (implementa cond para evaluar cada caso)
;; IMPACTO: No destructiva 
;; ========================================================
(defun transicion (color-actual cambiar-a)
	(cond 
		 ((and (not (equal color-actual 'en-rojo)) (equal color-actual 'amarillo-intermitente) (equal cambiar-a 'rojo)) (list color-actual "cambiar-a-rojo"))
		((and (not (equal color-actual 'en-amarillo)) (equal cambiar-a 'amarillo-intermitente)) (list color-actual "cambiar-a-amarillo-intermitente"))
		((and (not (equal color-actual 'en-verde))  (equal color-actual 'amarillo-intermitente) (equal cambiar-a 'verde)) (list color-actual "cambiar-a-verde"))
		(t (list color-actual 'accion-por-defecto))
	)
)

;; ========================================================
;; FUNCIÓN: timer (Actualizada a la Iteracion 2)
;; NATURALEZA: Pura (Ya que devolvera siempre el color ante el mismo timestamp)
;; ESTRATEGIA: Estructura condicional y predicado (implementa cond para evaluar cada caso junto con comparaciones y rem)
;; IMPACTO: No destructiva 
;; ========================================================
(defun timer(timestamp)
	(cond
		((< (rem timestamp 222) 90) 'Rojo)
		((< (rem timestamp 222) 96) 'amarillo)
    	((< (rem timestamp 222) 93) 'amarillo-intermitente)
		((< (rem timestamp 222) 213) 'verde)
		((< (rem timestamp 222) 219) 'amarillo)
		(t 'amarillo-intermitente)
	)
)













