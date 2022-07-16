void juego(){
//if (estado.equals("creditos")){

//}

  
if (estado.equals( "estado1")) { 
//  reiniciar();
  image (imagenuno, 0, 0);
  image (imagendos, 200, 500);
  //boton
   image(boton1,x,y,w,h);
 
} 
if ( (mouseX > x) && (mouseX < x + w) && (mouseY > y) && (mouseY< y + h) && mousePressed){
   estado = "estado2";
}

if ( estado.equals ("estado2")) {
  image (ruta, 0, 0);
  image(images [0],posX,posY);
  images[1].resize(400,470);
  image(images [1],15,300);
  ob1.resize(obalto,obancho);
  image(ob1,posXob1,posYob1);
  ob2.resize(obalto,obancho);
  image(ob2,posXob2,posYob2);
  ob3.resize(obalto,obancho);
  image(ob3,posXob3,posYob3);
  
  posY ++;
  
      if ( keyCode == LEFT ) {
        posX = posX-vel;
      }
      if ( keyCode == RIGHT ) {
        posX = posX+vel;
      }
    }  
    

    if ( (posX > posXob1) && (posX < posXob1 + obancho) && (posY> posYob1) && (posY< posYob1+ obalto)){
      estado = "perdiste";
    }
    if ( (posX > posXob2) && (posX < posXob2 + obancho) && (posY> posYob2) && (posY< posYob2+ obalto)){
    estado = "perdiste";
    
    }
 if ( (posX > posXob3) && (posX < posXob3 + obancho) && (posY> posYob3) && (posY< posYob3+ obalto)){
    estado = "perdiste";
    
 }
 if (( posY > 500) && (posY < 550)){ 
    estado = "ganaste";
 }
 
 if (estado.equals("perdiste")){

  fill(255,0,0);
    textSize(50);
    textFont(font);
    text("perdiste :(",40,300);
  //  image(boton2,x2,y2,w2,h2);
   reiniciar();
      }
 
 if (estado.equals( "ganaste")){

fill(255,0,0);
    textSize(50);
    textFont(font);
    text("ganaste :)",40,300);
    images [2].resize(200,200);
    image(images [2],100,300);

  reiniciar();
      }
}
 
 
 
