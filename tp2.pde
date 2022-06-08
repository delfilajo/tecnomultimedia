//TRABAJO PRACTICO N2: ILUSION OPTICA 

//https://youtu.be/YH6l66-mOTo

//variables para cantidad y tamaño
int cant, tam;

void setup() {
  size(500, 500);
  ellipseMode( CENTER );
  //uso de frame para movimiento efecto zoom
  frameRate (80);
  
  cant= 50;
  tam = width / cant;
 
}
void draw() {
  
 //uso de background para que el ciclo for no quede repetido en el fondo 
  background (255);
  
  //ciclo for para la forma de mi ilusion

  for (int i =cant ; i > 0 ; i --) {
    
    
 //cambio de color mediante variables segun la posicion de mi mouse (blanco y negro y colores)
    
  float n = (i%2 == 0) ? 0 : 255;
  float nx =map (mouseX, 0 , width, 0, 255);
  float ny = map (mouseY, 0, height, 0, 255);
  fill (n, nx, ny);
  
  //cuadrados en blanco y negro por posicion de mouseY 
   if(mouseY < 300){
  fill (n,nx, ny+frameCount);}else{
  fill (n, ny+frameCount);}
  
  //forma
  
  ellipse (width/2, height/2, i*tam+frameCount, i*tam+frameCount);
   
  

  println (frameCount);
    
   
    
      }    
    }   





   //reinicio

void keyPressed(){

  if(keyCode== ENTER){
  frameCount = 0;
  cant= 50;
  tam = width / cant;
 
  
  }
 

  }

  
