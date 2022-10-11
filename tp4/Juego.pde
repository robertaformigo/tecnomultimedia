class Juego {

  //CAMPOS (variables)__________________________________________
  String estado;
  String [] texto = new String [5];
  PImage [] fondo = new PImage [4];
  PFont fuente;
  int w = 100;
  int h = 50;
  int c = 5; 
  Diamante[] diamantes= new Diamante[c];
  Gemas[] gemas = new Gemas[c];
  Cartera Cartera;
  Puntos puntos;
  {
   //-----------------------------
    fuente = loadFont("BlackRose-48.vlw");
    textFont(fuente);

    //textos 
    texto [0] = "Agarra  las 100 gemas \n   que estan cayendo!"; 
    texto [1] = "           Uy perdiste :( \n    Queres volver a jugar?";
    texto [2] = "        Ganaste ey :)  \n       Te Felicito!!";
    texto [3] = "Jugar";
    texto [4] = "Reiniciar";
  }
  //constructor
  Juego() {
    estado = "inicio";
    puntos= new Puntos();
    Cartera = new Cartera( width/2, height-50);

    for ( int i = 0; i < gemas.length; i++ ) {  //
     gemas[i] = new Gemas();
    }
    for ( int i = 0; i < diamantes.length; i++ ) {
      diamantes[i] = new Diamante();
    }
    for (int i = 0; i < fondo.length; i++) {
      fondo[i] = loadImage("fondo"+i+".png");
    }
  }
 // ----------------------------------------------
  void texto() {
    textFont(fuente, 48);
    textSize(55);
    fill(255);
  }
  void dibujar() {  //pantallas
    //Inicio
    if ( estado.equals("inicio")) {         
      image(fondo[1], 0, 0);
      texto();
      text(texto [0], 50, 300);
      text(texto [3], 410, 580);
    }
    //perdiste
    if ( estado.equals( "perder") ) {
      image(fondo[2], 0, 0);
      texto();
      text(texto [1], 0, 260);
      text(texto [4], 300, 580);
    }
    //ganaste
    if (estado.equals( "ganar") ) {
      image(fondo[3], 0, 0);
      texto();
      text(texto [2], 50, 260);
      text(texto [4], 400, 580);
    }
    //jugar 
    if ( estado.equals( "jugar" ) ) {
      image(fondo[0], 0, 0);
      Cartera.dibujar();     
      for ( int i = 0; i < c; i++ ) {  
        gemas[i].dibujar( true );
        diamantes[i].dibujar( true);
      }
      puntos.dibujar();
    }
  }
  void actualizar() {

    if ( estado.equals( "jugar" ) ) {
      for ( int i = 0; i < diamantes.length; i++ ) {  
        diamantes[i].actualizar();
      }
      for ( int i = 0; i < gemas.length; i++ ) {  
        gemas[i].actualizar();
      }
      //COLISIONES
       Cartera.gemas(gemas);
       Cartera.diamante(diamantes);
    }
  }
  void botones() {
    if (mouseX>width-200 && mouseY >height-100 && estado.equals("inicio"))  {
      estado = "jugar";
    }  
    if (mouseX>width-200 && mouseY >height-100 && estado.equals("ganar")) {
      estado = "inicio";
    }
    if (mouseX>width-200 && mouseY >height-100 && estado.equals("perder")) {
      estado = "inicio";
    }
  }
}
