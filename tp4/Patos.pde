class Patos { //mi clase

  //uso de float para posicion x de mis patos y velocidad (propiedades)
  float x1;
  float x2;
  float x3;
  float y1;
  float y2;
  float y3;
  float v;
  
  //uso de color para diferentes tintes en mis patos y su color original
  color normal = color(255);
  color naranja = color (255, 187, 49);
  color violeta = color (83, 2, 165);
  color verde = color (63, 255, 0);
  color original=  color (255);
  color original1 =  color (255);
  color original2 =  color (255);
  
  //variable cantidad patos
int cantPatos = 3;
//arrays
PImage [] patos = new PImage [cantPatos];
String [] nombre = {"pato.png", "pato1.png", "pato2.png"};


  Patos() { //constructor (otro metodo mas)

    //asigno valor a mis posiciones x y velocidad
    x1=50;
    y1=350;
    x2=250;
    y2=230;
    x3=450;
    y3=100;
    v=3;
    
    //ciclo for para patos (declara todos los arrays de los patos al mismo tiempo)
  for (int a=0; a<nombre.length; a++) {
    patos [a] = loadImage (nombre[a]);
  }
  }
  //metodos
  void patitos() {

    //uso variable v en mis posiciones x sumando para movimiento
    x1+=v;
    x2+=v;
    x3+=v;



    //les agrego a mis patos su posicion como su tamaño, ademas de su propio tint
    tint(original);
    image (patos[0], x1, y1, 100, 100);  
    tint(original1);
    image (patos[1], x2, y2, 100, 100); 
    tint(original2);
    image (patos[2], x3, y3, 100, 100);

    //uso de if para hacer que mis patos vuelvan a aparecer en pantalla cuando superen el ancho de lo pantalla
    if (x1 > width) {
      x1= 0;
    }
    if (x2 > width) {
      x2= 0;
    }
    if (x3 > width) {
      x3= 0;
    }
  }

  void colision () {
//colisiones para que segun el pato que toque se pinte de diferente color al clickearlo

    if (dist (x1, y1, mouseX, mouseY) < 50) {

      tint (original=naranja);
    }



    if (dist(x2, y2, mouseX, mouseY) < 50) {

      tint (original1=violeta);
    }



    if (dist (x3, y3, mouseX, mouseY) < 50) {

      tint (original2=verde);
    }
    if (x3>=610) {
      tint (original2);
    }
  }
  
  //metodo para volver el color original a los patos al superar el ancho de la pantalla
 void cambioDecolor() {
    if (x1>=550) {
      original=normal;
    }
    if (x2>=550) {
      original1=normal;
    }

    if (x3>=550) {
      original2=normal;
    }
  }
}
