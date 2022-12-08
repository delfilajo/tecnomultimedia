class Comida {
  
int posX=272; 
int posX1=500;
int posX2=150;
int posX3=60;
int posX4=500;
int posX5=72;
int posX6=450;
int posX7=285;

int posY=-85;
int posY1=-37;
int posY2=-200;
int posY3=-295;
int posY4=-330;
int posY5=-39;
int posY6=-205;
int posY7=-300; 
  
  //arreglos para comida
int cantComida = 8;
PImage [] comida = new PImage [cantComida];
String [] nombre = {"1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png"};

 
 
 Comida () {


   
     for (int a=0; a<nombre.length; a++) {
    comida [a] = loadImage (nombre[a]);
  }
 
 }
  

void actualizar () {
  
  //declaro mis imagenes con sus diferentes posiciones
  
  image (comida[0], posX, posY); 
  image (comida[1], posX1, posY1); 
  image (comida[2], posX2, posY2); 
  image (comida[3], posX3, posY3); 
  image (comida[4], posX4, posY4);
  image (comida[5], posX5, posY5); 
  image (comida[6], posX6, posY6); 
  image (comida[7], posX7, posY7); 
  
}
  
  void movimiento(int q){
  //movimiento en y
   posY++;
  posY1++;
  posY2++;
  posY3++;
  posY4++;
  posY5++;
  posY6++;
  posY7++;
  
  //reinicio al llegar al limite de la pantalla y sonido de queja cuando sucede
  
if (posY>=q){

  posY=-45;
  queja.rewind();
}
if (posY1>=q){

  posY1=-150;
  queja.rewind();
}
if (posY2>=q){

  posY2=-50;
  queja.rewind();
}
if (posY3>=q){

  posY3=-110;
  queja.rewind();
}
if (posY4>=q){

  posY4=-90;
  queja.rewind();
}
if (posY5>=q){

  posY5=-120;
 
}
if (posY6>=q){

  posY6=-80;
}
if (posY7>=q){

  posY7=-60;
}
}
}
