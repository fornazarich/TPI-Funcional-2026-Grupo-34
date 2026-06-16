// ========================================================
// FUNCIÓN: transicion
// NATURALEZA: Pura (no posee efectos secundarios)
// ESTRATEGIA: Uso de match-case para cambiar los colores
// IMPACTO: No destructiva
// ========================================================

def transicion(colorActual: String, cambiarA: String): Any = {

  (colorActual, cambiarA) match {

    case (color, "rojo") if color != "en-rojo" =>
      List(colorActual, "cambiar-a-rojo")

    case (color, "amarillo") if color != "en-amarillo" =>
      List(colorActual, "cambiar-a-amarillo")

    case (color, "verde") if color != "en-verde" =>
      List(colorActual, "cambiar-a-verde")

    case _ =>
      colorActual
  }
}
