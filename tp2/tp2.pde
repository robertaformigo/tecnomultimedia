/*                                                       TP2 - ILUSION OPTICA INTERACTIVA
                                                    ROBERTA FORMIGO (LEGAJO 88131/7) COMISION 2 
                                                     video explicativo: https://youtu.be/fcbEJac47CI

*/


int g = 0;  //grosor
color aColor = color( random(255),random(255),random(255) );
color aColor2 = color( random(150),random(150),random(150) );   //3 variables para el fill
color aColor3 = color( random(50),random(50),random(50) );

void setup() {
  size(400, 400);
  background(255);
}
void draw() {
lineas();    //funcion propia

}

void lineas(){
  for (int l1 = 120; l1 < 400; l1 += 50) {
    strokeWeight(g);
    stroke(aColor3);
    line(l1, 0, l1, 400);
  }

  for (int l2 = 110; l2 <350; l2 += 70) {             //DA LA ILUSION DE QUE SE CHOCAN
    strokeWeight(g);
    stroke(aColor);
    line(l2, 0, l2, 400);
  }


  for (int l3 = 10; l3 < 200; l3 += 90) {
    strokeWeight(g);
    stroke(aColor2);
    line(l3, 0, l3, 400);
}
}

void mouseDragged() {
  g++;
}

void reinicio(){
   g = 0;
}

void keyPressed () {
  if (key== 'r') {
   reinicio();
  }
}
