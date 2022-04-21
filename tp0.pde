/*TP#0 - Dibujo básico
Roberta Formigo 88131/7 - COM 2 
*/

void setup(){
size (800,600);
background(255);

}

void draw(){
  
  println("X");
  println(mouseX);
  println("Y");
  println(mouseY);

  //cielo
  fill(115,182,198);
    rect(0,0,800,600);
    
  //parte 1
  fill(123,181,60);
    rect(0,345,800,600);
    
  //pared
  stroke(132,83,43);
  fill(211,158,126);
    rect(490,75,250,285);
    
 //garaje
    //piso
   fill(115);
   noStroke();
     rect(245,360,70,130);
     rect(315,415,180,75);
     rect(495,360,240,400);
   stroke(132,83,43);
   fill(210,146,118);
     rect(520,210,200,150);
   fill(125,71,47);
     line(520,250,720,250);
     line(520,290,720,290);
     line(520,330,720,330);
   fill(145,196,189);
     rect(595,140,50,50);
   strokeWeight(2);
   fill(125,71,47);
    line(620,140,620,190);
    line(596,165,645,165);
   strokeWeight(4);
    line(620,110,490,154);
    line(620,110,740,154);
    
  //techo
  fill(111,70,36);
    quad(485,20,500,80,747,80,730,20);
    
  //parte 2
   //techo
  stroke(132,83,43);
  fill(211,158,126);
    rect(79,75,410,285);
  fill(132,83,43);
    quad(75,10,50,80,510,80,490,10);
  stroke(132,83,43);
    
 //ventana1 
   stroke(102,65,39);
   fill(137,192,186);
    rect(120,90,120,70);
    line(180,90,180,160);
  
 //ventana2
   stroke(102,65,39);
   fill(137,192,186);
    rect(322,90,120,70);
    line(380,90,380,160);
  
 //linea techo  
   stroke(122);
   fill(122);
    rect(60,80,440,10);
    
 //ventanas con arc der
  stroke(102,65,39);
  fill(132,83,43);
   ellipse(395,260,90,50);
 stroke(102,65,39);
  fill(137,192,186);
   rect(350,261,90,80);
    line(370,265,370,342);
    line(420,265,420,340);
 
 //ventanas con arc izq
   fill(132,83,43);
      ellipse(165,260,90,50);
   fill(137,192,186);
    rect(120,261,90,80);
      line(140,264,140,340);
      line(190,260,190,340);
 strokeWeight(1);
      line(165,264,165,340);
      line(140,290,190,290);
      line(140,320,190,320);
      line(120,295,140,290);
      line(130,260,130,340);
      line(120,325,140,320);
      line(200,260,200,340);
      line(210,325,190,320);
      line(210,295,190,290);
      //
      line(360,260,360,340);
      line(430,260,430,340);
      line(395,260,395,340);
      line(370,290,420,290);
      line(370,320,420,320);
      line(370,290,350,295);
      line(350,325,370,320);
      line(420,290,440,295);
      line(420,320,440,325);
     
     //puerta
     strokeWeight(3);
     fill(214,107,97);
        ellipse(280,290,65,75);
       rect(247,290,65,70);
     noStroke();
       ellipse(280,290,55,65);
       rect(250,290,55,65);
     fill(139,92,171);
       rect(255,310,10,18);
     fill(182,162,185);
        circle(260,320,10);
     fill(140);
       rect(245,355,70,10);
     
  
     //muñeco de nieve
     fill(255);
       circle(490,295,50);
       circle(490,350,80);
        circle(490,400,100);
     fill(255,0,0);
       circle(480,290,5);
       circle(498,290,5);
       
}
