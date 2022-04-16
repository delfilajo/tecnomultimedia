void setup (){
  size (600, 600);
  
}

void draw (){
  background (40, 45, 85);
  strokeWeight (3);
  
  //FONDO
  //pasto
  fill(1, 49, 0);
  rect (0, 400, 600, 200);
  //estrellas
  stroke (255, 255, 0);
  fill (255, 255,0);
  ellipse (70, 40, 5,5);
  ellipse (515,170, 4,4);
  ellipse (260, 280, 2, 2);
  ellipse (60, 215, 5, 5);
  ellipse (270, 25, 3, 3);
  ellipse (560, 360, 2, 2);
  ellipse (195, 130, 3, 3);
  ellipse (570, 20, 2, 2);
  ellipse (30, 360, 3, 3);
  ellipse (120, 295, 2, 2);
  ellipse (340, 170,5, 5);
  ellipse (420, 50, 3, 3);
  ellipse (310, 380, 4, 4);
  ellipse (290, 120, 2, 2);
  ellipse (550, 250, 2, 2);
  ellipse (15, 120, 2, 2);
  ellipse (465, 340, 2, 2);
  
  //luna
  ellipse (520, 80, 100, 100);
  fill (40, 45, 85);
  noStroke();
  ellipse (480, 80, 100, 100);
  
  //PERSONAJES
  
  //sombras de personajes
  stroke (0);
  fill (0);
  ellipse (160, 470, 200, 20);
  ellipse (400, 470, 80, 10);
  
  //WALL-E
  //brazos
  fill(80, 80, 80);
  ellipse (220, 350, 20, 30);
  ellipse(100, 350, 20, 30);
  

  
  
  //cuerpo y cuello
  fill (236, 237, 22);
  rect (100, 350, 120, 80);
  rect (143, 310, 35, 30);
  
  //logo
  fill (255, 0, 0);
  noStroke();
  rect (200, 409, 20, 20);
  fill (0);
  textSize(15);
  text ("WALL-", 150, 425);
  fill (255);
  text ("  E", 196, 425);
  //cuerpo
  stroke (0);
  fill (150,150,150);
  rect (100, 320, 120, 30);
  //ruedas
  fill(120, 75, 0);
  rect (70, 370, 30, 100);
  rect (220, 370, 30, 100);
  line (70, 400, 100, 400);
  line (220, 400, 250, 400);
  line (70, 430, 100, 430);
  line (220, 430, 250, 430);
  
  //cuello
  fill (236, 237, 22);
  rect (155, 250, 10, 60);
  //ojos
  fill (150,150,150);
  rect (95, 230, 60, 40, 15, 24, 48, 72);
  rect (165, 230, 60, 40, 15, 24, 48, 72);
  fill (0);
  ellipse (125, 255, 20, 20);
  ellipse (192, 255, 20, 20);
  //manos
  fill (80,80,80);
  rect (101, 335, 30, 30 );
  rect (190, 335, 30, 30 );
  line (101, 350, 129, 350); 
  line (190, 350, 220, 350); 
  
  //EVA
  //cuerpo
  fill (240, 240, 240);
  arc (400, 190, 130, 400, 0 , PI , CHORD);
  //cabeza
  ellipse ( 400, 135, 120, 95);
  //ojos
  fill (0);
  ellipse ( 400, 130, 90, 40);
  fill (0, 160, 200);
  ellipse ( 380, 130, 20, 20);
  ellipse ( 420, 130, 20, 20);
  
  //brazos
  fill (240, 240, 240);
  ellipse (335, 260, 20, 120);
  ellipse (465, 260, 20, 120);
  
  
  
  
}
