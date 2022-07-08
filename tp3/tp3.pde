void setup (){
 size (429, 600); 
   imagenuno = loadImage ("Intro.png"); 
   imagendos = loadImage ("boton.png");
   boton1 = loadImage ("boton.png");
   boton2 = loadImage ("reinicio.png");
   ruta = loadImage ("ruta.png");
   font = loadFont ("letra.vlw");
   ob1 = loadImage("o1.png");
   ob2 = loadImage("o2.png");
   ob3 = loadImage("o3.png");
   
  posXob1= 65;
  posYob1= 130;
  posXob2= 300;
  posYob2= 290;
  posXob3= 76;
  posYob3= 360;
  obalto = 80;
  obancho =80;
   
   x = 115;
   y=300;
   w=180;
   vel = 1;
   h=180;
   
   x2=115;
   y2=250;
   w2=180;
   h2=180;

   images [0] = loadImage("amarillo.png");
   images [1] = loadImage("fin.png");  
   images [2] = loadImage("creditos.png");
   

}


void draw (){

//obstaculos
creditos();
limites();
juego();

}
