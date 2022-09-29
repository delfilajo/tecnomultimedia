class Juego {
  //declaro mis clases secundarias y objetos
  Patos patitos;
  Mira m;
  Stand s;

  Juego () {

    //inicializo/creo mis objetos

    patitos = new Patos();
    m= new Mira();
    s= new Stand();
  }

  void actualizar() {
    patitos.patitos();
    patitos.cambioDecolor();
    s.escenario();
    m.mira();
  }
  
  void deteccion () {
    if (mousePressed==true)
      patitos.colision ();
    m.animacion();
  }
}
