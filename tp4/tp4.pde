//https://www.youtube.com/watch?v=h0M_gp-sDLY
//me olvide de nombrarlo en el video, pero en mi codigo fuente llamo a mi clase juego con sus diversos metodos para asi poder iniciar mi juego

//TP4

//clase y objeto principal

Juego juego;




//imagenes

PImage fondo;


void setup () {

  size (600, 600);





  //cargo mis imagenes
  
  fondo=loadImage ("fondo1.jpg");
  

  //declaro mi clase principal

  juego = new Juego();
}



void draw () {

  background(fondo);

  //llamo a diferentes metodos por mi clase principal
  juego.actualizar();
  juego.deteccion();
}
