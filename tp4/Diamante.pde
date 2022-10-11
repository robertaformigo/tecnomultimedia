class Diamante {

  //---------------------------
  float x, y;
  float tam;
  float vel;
  PImage diamante;

  //CONSTRUCTOR ------------------------------------
 Diamante() { 
    x = random( -20, width );
    y = -100;
    tam = random( 30, 70 );
    vel = random( 1, 3 );

    //carga de las imagenes
    diamante = loadImage( "diamante.png" );  
    diamante.resize( int(tam), int(tam) );
  }

  //---------------------------------------------
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar(boolean conImagen) {
    pushStyle();
    rectMode(CENTER);
    rect( x, y, diamante.width, diamante.height);
    imageMode(CENTER);
    image( diamante, x, y );
    popStyle();
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
  }
  float obtenerX() {
    return x;
  }
  float obtenerY() {
    return y;
  }
}
