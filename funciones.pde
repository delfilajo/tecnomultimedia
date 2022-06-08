//variables para cantidad y tamaño
int cant, tam;

void miIlusionOptica (){

   ellipseMode( CENTER );
  //uso de frame para movimiento efecto zoom
  frameRate (80);
  
  cant= 50;
  tam = width / cant;
  
  //uso de ciclo for para repeticion de mi forma
  
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

  
