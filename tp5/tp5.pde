//link de video explicativo:
//Lajoinie, Maria Delfina
//Comision 2
//Profes: Matias Jauregui Lorda, Tobias Albarrosa.
//TP5 Recuperatorio: Avanzando con POO


//biblioteca minim
import ddf.minim.*;

//clases de mis audios
Minim minim;
AudioPlayer queja;
AudioPlayer ganador;
AudioPlayer perdedor;
AudioPlayer ambiente;
AudioPlayer efecto;

//declaro mi clase juego

Juego juego;



void setup() {
  size (600, 600);
 



  //subo mis audios para diferentes estados
  minim= new Minim(this);
  queja= minim.loadFile ("queja.mp3");
  efecto= minim.loadFile ("efecto.mp3");
  ganador= minim.loadFile ("ganador.mp3");
  perdedor= minim.loadFile ("perdedor.mp3");
  ambiente= minim.loadFile ("ambiente.mp3");
  

  //inicializo mi clase

  juego= new Juego(5);
}


void draw() {

  background (255);

  //llamo a los diferentes metodos con mi clase principal

 juego.estado();
 juego.botones();
 juego.efecto();


 
}




//uso un keypressed para segun en que estado me encuentre y la tecla que se utilice suceda diferentes cosas.
void keyPressed() {
  if (  keyCode == LEFT) {
    juego.movimientoi();
  } 
  if (keyCode == RIGHT) {
    juego.movimientod();
  }

}
