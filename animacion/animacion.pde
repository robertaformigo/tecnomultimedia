/*                                                     Desafío #1: Animación de nombre propio
                                                          Roberta Formigo - 88131/7 - COM2
*/
int variable;
float random = random(50,200);
String texto = "Mi nombre es Roberta";
PFont fuente;

void setup(){

size(400,400);

}
void draw(){
  fuente = loadFont("curl.vlw");
  variable = frameCount;
  
  background( 113,variable,178 );
  
  noStroke();
  fill(255,variable,0);
    circle(0,10,variable);
    circle(300,50,variable);
  fill(0,variable,255);
    circle(200,variable,150);
    circle(variable,150,20);
    circle(30,275-variable,25);
    circle(390,variable,100);

 fill(0);
  textFont(fuente,30);
  text(texto,90,200);
}
