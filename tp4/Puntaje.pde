int puntos = 0;

class Puntos {
  Puntos() {
  }

  void dibujar() {
    textSize (30);
    fill(255); 
    text("  Contador de las gemas: "+puntos, 20, 40);

    println(puntos);
  }
}
