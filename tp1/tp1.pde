                                             /*          Trabajo práctico #1 - Animando con código
                                                           Roberta Formigo - 88131/7 - Comision 2
                                              */
                                              
//VARIABLES
PFont fuente;

PImage foto1;
PImage foto2;
PImage foto3;
PImage foto4;
PImage foto5;
PImage p1;
PImage p2;
PImage pp1;
PImage pp2;
PImage pp3;
PImage pp4;
PImage fondo;
PImage fondo2;

float t;
int zen; 

void setup(){
size(800,400);
textAlign(CENTER,CENTER); 
background(255);
  
  fuente = createFont("HelveticaNeue-UltraLight",50);
  textFont(fuente);
  zen = 1;
  
  foto1 = loadImage("1.png");
  foto2 = loadImage("2.png");
  foto3 = loadImage("3.png");
  foto4 = loadImage("4.png");
  foto5 = loadImage("5.png"); 
  p1 = loadImage("p1.png");
  p2 = loadImage("p2.png");
  pp1 = loadImage("pp1.png");
  pp2 = loadImage("pp2.png");
  pp3 = loadImage("pp3.png");
  pp4 = loadImage("pp4.png");
  fondo = loadImage("fondo.png");
  fondo2 = loadImage("fondo2.png");

}

void draw() {
 
zen++;
println(zen);
 
 //-------------------- PANTALLAS ---------------------------------

  //Pantalla 1 
  if (zen > 0 && zen < 200){
    //imagen
      image(foto1, 0, 0);
    //texto
    textFont(fuente);
    textSize(80);
    fill(255, +250 - zen);
    text("zendaya", 400, 200);
  }  
  
  //Pantalla 2

if(zen > 200 && zen < 400){
    //imagen
      image(foto2,0,0);
    //texto  
      textSize(80);
      fill(255, +400 - zen);
      text("angus cloud", 400, 200);
  }
 
  //Pantalla 3 
if (zen > 400 && zen < 600){
    //imagen
    image(foto3,0,0);
    //texto
    textSize(80);
    fill(255, +600 - zen);
    text("alexa damie", 400, 200); 
  }

//Pantalla 4
if (zen > 600 && zen < 800){
    //imagen
    image(foto4,0,0);
    //texto
    textSize(80);
    fill(255, + 800 - zen);
   text("Sydney Sweeney", 400, 200);
}

  //Pantalla 5

if (zen > 800 && zen < 1000){
    //imagen
    image(foto5,0,0);
     //texto
    textSize(80);
    fill(255,+1000 -zen);
    text("barbie ferreyra", 400, 200); 
   }

  //Pantalla 6
  if (zen > 1000 && zen < 1200){
    //imagen
    image(p1,0,0);
     //texto
    textSize(80);
    fill(255, +1200 - zen);
    text("hunter schafer", 400, 200); 
  }
  //Pantalla 7
  if (zen > 1200 && zen < 1400){
    //imagen
    image(p2,0,0);
     //texto
    textSize(80);
    fill(255,+1400 - zen);
    text("maude apatow", 400, 200); 
  }
  //Pantalla 8
  if (zen > 1400 && zen < 1600){
    //imagen
    image(pp1,0,0);
     //texto
    textSize(80);
    fill(255,+1600 - zen);
    text("jacob elordi", 400, 200); 
  }
  //Pantalla 9 
  if (zen > 1600 && zen < 1800){
    //imagen
    image(pp2,0,0);
     //texto
    textSize(80);
    fill(255, +1800 - zen);
    text("eric done", 400, 200); 
  }
  //Pantalla 10
  if (zen > 1800 && zen < 2000){
    //imagen
    image(pp3,0,0);
     //texto
    textSize(50);
    fill(255, +2000 - zen);
    text("music composed by", 400, 200); 
    text("labrinth", 400, 250);
  }
  //Pantalla 11
  if (zen > 2000 && zen < 2200){
    //imagen
    image(pp4,0,0);
     //texto
    textSize(50);
    fill(255, +2200 - zen);
    text("produced by", 400, 200);
    text("tyler romary", 400, 250);
  }
  //Pantalla 12
  if (zen > 2200 && zen < 2400){
    //imagen
    image(fondo,0,0);
    
    //circulo de fondo
    if(frameCount%60 == 0 )
    t =random(150);
      noStroke();
      fill(255,50);
      ellipse( width/2, height/2, t, t);
      ellipse( mouseX, mouseY,t,t);
    
     //texto
      textSize(80);
      fill(255, +2400 - zen);
      text("euphoria.", 400, 200); 
  }
  //Pantalla 13
  if (zen > 2400 && zen < 2600){
    //imagen
    image(fondo2,0,0);
     //texto
    textSize(50);
    fill(255, +2600 - zen);
    text("written by", 400, 200);    
    text("sam levinson", 400, 250);
  }
}

void keyPressed(){
if (key == 'r'){
 reinicio();
}
}
void reinicio(){
zen = 1;
}
