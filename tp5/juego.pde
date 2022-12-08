class Juego {

  

  
int Estado=0;

  
  //arreglo para HUD (animo)
int cantAnimo = 3;
PImage [] animo= new PImage [cantAnimo];
String [] name = {"primero.png", "segundo.png", "tercero.png"};

  //variable cantidad
  int cantidad= 10;
  //llamo a mis otras clases
  Comida comida;

  Personaje personaje;
  //arreglo de nubes (fondo juego);
  Nube[] nubes;

  //variable puntos para el cambio del HUD
  int p =0;
  // variables botones rect
  int h=70;
  //uso PImage para diversas pantallas
  PImage inicio;
  PImage fondo;
  PImage perder;
  PImage ganar;
  PImage compas;
  PFont fuente;

  //constructor con mi variable de cantidad
  Juego(int c_) {
    

    
    for (int n=0; n<name.length; n++) {
    animo [n] = loadImage (name[n]);
  }

    cantidad =c_;
    nubes= new Nube [cantidad];

    //inicializo mis clases
    personaje = new Personaje();
    comida = new Comida();

    //cargo mis imagenes y fuentes

    inicio= loadImage ("inicio.png");
    fondo= loadImage ("fondo.png");
    fuente = createFont("fuente.ttf", 10);
    textFont(fuente);
    perder = loadImage ("perder.png");
    ganar = loadImage ("ganar.png");
    compas= loadImage ("compas.png");

    for (int i=0; i<nubes.length; i++) {

      nubes[i]= new Nube(1, 2);
    }
  }

//metodos para nubes
  void act () {

    for (int i=0; i<nubes.length; i++) {
      nubes[i].actualizar();
    }
  }
  void dibujar () {
    for (int i=0; i<nubes.length; i++) {
      nubes[i].dibujar();
    }
  }


//ESTADOS

void estado (){
   if (Estado==0) {
    juego.inicio();
    ambiente.play();
  } else if (Estado==1) {

    juego.Estad1();

    
  } else if (Estado==3) {
    juego.Estado3();
  } else if (Estado==2) {
    juego.Estado2();
  } else if (Estado==4) {
    juego.Estado4();
  }
}

//EFECTO BOTON
 void efecto (){
   
   if (Estado==0 &&  mouseX>=40 && mouseX<=240 && mouseY>=460 && mouseY<=540){
     stroke(299,0,4);
     strokeWeight(5);
   }
   else {
     stroke(0);
     strokeWeight(1);
   }   
 }
   //movimiento personaje
   void movimientod(){
     personaje.xp+=5;
   }
   
   void movimientoi(){
     personaje.xp-=5;
   }
 

  void botones(){
  

  
  //condicion botones
   if (Estado==0 &&  mouseX>=40 && mouseX<=240 && mouseY>=460 && mouseY<=540 && mousePressed==true) {
    
    Estado = 1;
    ambiente.mute();
   }
    
   if (Estado ==2 && mouseX>=220 && mouseX<=370 && mouseY>=205 && mouseY<=275&& mousePressed==true) {   
    juego.reinicio();
    perdedor.mute();
   }
      if (Estado ==2 && mouseX>=190 && mouseX<=405 && mouseY>=305 && mouseY<=372&& mousePressed==true) {   
    Estado = 4;
    perdedor.mute();
      }
      
       if (Estado ==3 && mouseX>=220 && mouseX<=370 && mouseY>=205 && mouseY<=275&& mousePressed==true) {   
    juego.reinicio();
    ganador.mute();
   }
      if (Estado ==3 && mouseX>=190 && mouseX<=405 && mouseY>=305 && mouseY<=372&& mousePressed==true) {   
    Estado = 4;
    ganador.mute();
      }
   
   
    
  if (Estado ==4 && mouseX>=103 && mouseX<=302 && mouseY>=465 && mouseY<=515&& mousePressed==true) {
    juego.reinicio();

  }
}

  void inicio() {

    background (0);
    image (inicio, 0, 0);
    textSize (20);
    text("DEBES COMER 10 SANDWICHES \n PARA QUE RUBEN SEA FELIZ, \n CUIDADO CON LOS PODRIDOS", 250, 350);
    println(mouseX, mouseY);
    fill(229, 218, 0);
    rect (40, 460, 200, 80);
    fill(229, 0, 4);
    textSize(50);
    text ("JUGAR", 50, 515);
  }

  //estado de juego
  void Estad1 () {

    background(151, 245, 236);
    push();
    act();
    dibujar();
    actualizar();
    pop();
    personaje.actualizar();
    comida.actualizar();
    colision(80, 150, 40, 30);
    animo();
    queja.play();
    efecto.play();
    text ("Puntos:"+p, 2.5*width/4, 50);
  }
  //estado perdedor
  void Estado2() {
    println(mouseX, mouseY);
    image (perder, 0, 0);
    textSize (40);
    text ("PERDISTE", 200, 50);
    text ("INTOXICASTE A RUBEN", 90, 150);
    push();
    textSize(25);
    fill (229, 218, 0);
    rect(220, 205, 150, 70);
    rect (190, 305, 215, 70);
    pop();
    text ("MENU", 250, 250);
    text ("CREDITOS", 200, 350);
  }

  //estado ganador
  void Estado3() {
    image (ganar, 0, 0);
    textSize (40);
    text ("GANASTE", 200, 50);
    text ("RUBEN QUEDO SATISFECHO", 40, 150);

    push();
    textSize(25);
    fill (229, 218, 0);
    rect(220, 205, 150, h);
    rect (190, 305, 215, h);
    pop();
    text ("MENU", 250, 250);
    text ("CREDITOS", 200, 350);
  }
  //creditos
  void Estado4 () {

    background (255);
    image (compas, 0, 0);
    textSize (35);
    push();
    fill(229, 218, 0);
    rect (104, 466, 200, h);
    fill (0);
    text ("REINICIAR", 110, 500);
    pop();
    text("Produccion disenio y desarrollo por:", 20, 70);
    text(" Maria Delfina Lajoinie", 120, 150);
    text("Tecnologia Multimedial 1", 110, 280);
    text("Profesor: Matias Jauregui Lorda", 55, 360);
  }


  void actualizar () {
    personaje.movimiento(); 
    comida.movimiento(550);
  }

  void colision (int f, int g, int h, int j) { 

    //colision para la suma de puntos y su reinicio.
    
    if (dist (personaje.xp+f, personaje.yp+g, comida.posX+h, comida.posY+h) < j) {
      comida.posX=272 ;
      comida.posY=-45 ;
      p=p+1;
      efecto.rewind();
    }
    if (dist (personaje.xp+f, personaje.yp+g, comida.posX1+h, comida.posY1+h) < j) {
      comida.posX1=500 ;
      comida.posY1=-150 ;
      p=p+1;
      efecto.rewind();
    }
    if (dist (personaje.xp+f, personaje.yp+g, comida.posX2+h, comida.posY2+h) < j) {
      comida.posX2= 150;
      comida.posY2=-50 ;
      p=p+1;
      efecto.rewind();
    }
    if (dist (personaje.xp+f, personaje.yp+g, comida.posX3+h, comida.posY3+h) < j) {
      comida.posX3=60 ;
      comida.posY3=-110 ;
      p=p+1;
      efecto.rewind();
    }
    if (dist (personaje.xp+f, personaje.yp+g, comida.posX4+h, comida.posY4+h) < j) {
      comida.posX4=480 ;
      comida.posY4=-90 ;
      p=p+1;
      efecto.rewind();
    }

    //cuando colisiona con un sandwich podrido  pierde +sonido perdedor
    if (dist (personaje.xp+f,personaje.yp+g, comida.posX5+h, comida.posY5+h) < j) {
      Estado=2;
      perdedor.play();
    }
    if (dist (personaje.xp+f, personaje.yp+g, comida.posX6+h, comida.posY6+h) < j) {
      Estado=2;
      perdedor.play();
    }
    if (dist (personaje.xp+f, personaje.yp+g, comida.posX7+h, comida.posY7+h) < j) {
      Estado=2;
      perdedor.play();
    }
  }
  //void de HUD
  void animo() {
    if (p<=1) {
      image (animo[0], 20, 20);
    }

    if (p>=1) {
      image (animo[1], 20, 20);
    }

    if (p>=9) {
      image (animo[2], 20, 20);
    }
    //condicion  ganadora + sonido
    if (p==10) {
      ganador.play();
      Estado = 3;
    }
  }

  //reincio

  void reinicio() {

    personaje.xp=250;
    
    
    Estado=0;

    p=0;
    h=70;

    comida.posX=272; 
   comida.posX1=500; 
    comida.posX2=150; 
   comida.posX3=60; 
    comida.posX4= 500; 
    comida.posX5 = 72; 
    comida.posX6= 450;  
    comida.posX7= 285 ; 


    comida.posY=-85; 
    comida.posY1=-37; 
    comida.posY2=-200;
    comida.posY3=-295; 
    comida.posY4= -330; 
    comida.posY5= -39; 
    comida.posY6=-205;  
    comida.posY7= -300; 

    ambiente.unmute();
    ambiente.rewind();
    ganador.pause();
    ganador.rewind();
    ganador.unmute();
    perdedor.pause();
    perdedor.rewind();
    perdedor.unmute();
  }
}
