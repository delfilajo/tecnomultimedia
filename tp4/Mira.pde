class Mira {
  //tamaño de mira y uso de PImage
  int tam=60;
  PImage shoot;
  
  Mira() {
  //cargo mi imagen
    shoot=loadImage ("mira.png");
  }
  
  void mira() {

    image(shoot, mouseX-50, mouseY-25, tam+40, tam);
  }

  void animacion () {
    if (mousePressed == true) {
      tam=90;
    } else {
      tam=60;
    }
  }
}
