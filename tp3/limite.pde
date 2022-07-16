void limites() {
    if ( posX > width/2+20 ) {
      posX = width/2+20;
    }
    if ( posX < 20 ) {
      posX = 20;
    }
    if ( posY > height-20 ) {
      posY = height-20;
    }
    if( posY < 20 ){ posY = 19; }
    if( posY == 19 ){
     posY += vel; 
    }
  }
