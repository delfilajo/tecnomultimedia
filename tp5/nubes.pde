class Nube {
  
  float x,y;
  float tamanio;
  float velocidad;
  PImage imagen;
  
  Nube(float x_, float y_) {
    
    x=x_;
    y=y_;
    
    velocidad = random (2,50);
    
    imagen =loadImage ("nube-"+int (random (6))+".png");
    
    
  }
  
  void actualizar (){
    
    x+=velocidad;
    reciclar();
    
  }
  
  void dibujar (){
    
   image (imagen, x, y); 
   
   if (mousePressed==true){
     tint (39,39,39);
    
     
   }
   
  }
  
  void reciclar (){
    if (x>width+600){
      
      y=random (height);
      x=-10;
      
      velocidad = random (2,5);
    }
  }
    
    
  
  
  
  
}
