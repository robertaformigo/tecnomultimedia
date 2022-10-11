class Cartera {

  //CAMPOS (variables)----------------------------------
  float x, y, t;
  int tam;
  int posY, posX;
  PImage Cartera;
  
  //CONSTRUCTOR
  Cartera( float x_, float y_ ) {
    x = x_;
    y = y_ ;
    tam = 90; 
    Cartera = loadImage( "cartera.png" );
   
  }
  //-----------------------------------
  void dibujar() {
    posX = mouseX;
    pushStyle();
    imageMode(CENTER);
    rectMode(CENTER);
    rect(posX, y, tam, tam);
    Cartera.resize(tam, tam);
    image(Cartera, posX, y);
    popStyle();
  }

  //------------------------------------
  void gemas( Gemas[] l ) { 
    for ( int i = 0; i < l.length; i++ ) { 

      if (l[i].obtenerX() > posX - tam/2 && l[i].obtenerX()< posX + tam/2 && l[i].obtenerY()> y - tam/2 && l[i].obtenerY()< y + tam/2 ) {// bolsa 
        puntos = puntos + 10; 
        l[i].reciclar(); 
        tam++;
      } 
      if (puntos > 100) { 
        juego.estado = "ganar";
      }
    } 
    //lingotes.play();
  }
  //--------------------------------------------------
  void diamante( Diamante[] p) { 
    for ( int i = 0; i < p.length; i++ ) { 
      if (p[i].obtenerX() > posX - tam/2 && p[i].obtenerX()< posX + tam/2 && p[i].obtenerY()> y - tam/2 && p[i].obtenerY()< y + tam/2) { 
        t += p[i].tam;   
        p[i].reciclar(); 
        juego.estado = "perder";
      }
    }
  }
}
