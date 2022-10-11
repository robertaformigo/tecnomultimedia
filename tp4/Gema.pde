class Gemas {

  float x, y;
  float tam;
  float vel;
  PImage gemas;

  //--------------------
  Gemas() {  

    x = random( -40, width );
    y = -100;
    tam = random( 30, 50 );
    vel = random( 1, 3 );
    gemas = loadImage( "gemaverde.png" ); 
    gemas.resize( int(tam), int(tam) );
  }

  //------------------------------

  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar( boolean conImagen ) {
    pushStyle();
    rectMode(CENTER);
    rect( x, y, gemas.width, gemas.height);
    imageMode(CENTER);
    image( gemas, x, y );
    popStyle();
  }
  void reciclar() {
    x = random( width );
    y = -100; //que se recicle apenas colisionan
    tam = random( 30, 50 );
    vel = random( 1, 4 );
  }
  float obtenerX() {
    return x;
  }
  float obtenerY() {
    return y;
  }
}
