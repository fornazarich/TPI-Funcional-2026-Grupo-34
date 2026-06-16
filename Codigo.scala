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

// ========================================================
// FUNCIÓN: timer
// NATURALEZA: Pura (dado un timestamp siempre devuelve el mismo color)
// ESTRATEGIA: Pattern Matching (match-case sobre rango de valores)
// IMPACTO: No destructiva
// ========================================================

def timer(tiempoUnixActual: Int): String = {
  val resto = tiempoUnixActual % 216
  resto match {
    case r if r < 90  => "Rojo"
    case r if r < 96  => "Amarillo"
    case _            => "Verde"
  }
}

@main def test(): Unit = {

  println("=== TRANSICION ===")
  println(transicion("en-rojo", "verde"))
  println(transicion("en-verde", "rojo"))
  println(transicion("en-amarillo", "amarillo"))

  println("\n=== TIMER ===")
  println(timer(50))
  println(timer(100))
  println(timer(200))
}
