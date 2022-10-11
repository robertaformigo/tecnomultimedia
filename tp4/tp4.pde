/*                    Mini-Juego: Recolectar
          Roberta Formigo (88131/7) - Comision 2       
     Objetivo: Recolectar las gemas Winx y evitar agarrar los diamantes oscuros!    
*/
//--------------------------------------------------------------------------------------------------------------------------
Juego juego;

void setup() {
  size( 550, 620 );
  juego = new Juego();
}
void draw() {
  juego.actualizar();
  juego.dibujar();
  juego.texto();
}
void mousePressed () {
  juego.botones();
}
