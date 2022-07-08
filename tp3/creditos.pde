void creditos(){
 int cant= 10;
  int tam;
 if ( (mouseX > x3) && (mouseX < x3 + w3) && (mouseY > y3) && (mouseY< y3 + h3) && mousePressed){  
tam= width/2;
background (255,0,0);
strokeWeight(5);
for (int h = 0;  h < cant; h++)
   for (int j = 0;  j < cant; y++)
    rect (h * tam, j *tam, tam, tam);
    image(boton1,x3,y3,w3,h3);
    image(images [2],-30,20);
    
 }
    
}
