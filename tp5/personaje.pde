
class Personaje {
  PImage personaje;
  int xp=250;
  int yp=373;



  Personaje () {
    personaje= loadImage ("ruben.png");
  }

  void actualizar () {

    image (personaje, xp, yp);
    
  }

  void movimiento() {

    //condicion derecha
    if (xp>=450) {
      xp=450;
    }
    //condicion de movimiento para izquierda
    if (xp<=0) {
      xp=1;
    }
  }
}
