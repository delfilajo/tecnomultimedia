//TP1: ANIMACION DE CREDITOS : BOB ESPONJA
import ddf.minim.*;

Minim minim;
AudioPlayer player;


//Creditos Bob Esponja


PFont creditos;
PImage fondo;
PImage cursor;
PImage fin;

String credito; 
String credito1;
String credito2;
String credito3;
String credito4;
String credito5;
String credito6;
String credito7;
String credito8;
String credito9;
String credito10;
String credito11;
String credito12;
String credito13;
String credito14;
String credito15;
String credito16;
String credito17;
String credito18;
String credito19;
String credito20;
String credito21;
String credito22;
String credito23;
String credito24;
String credito25;
String credito26;
String credito27;
String credito28;
String credito29;
String credito30;
String credito31;
String credito32;
String credito33;
String credito34;
String credito35;
String credito36;
String credito37;
String credito38;
String credito39;
String credito40;
String credito41;
String credito42;
String credito43;
String credito44;
String credito45;
String credito46;
String credito47;
String credito48;
String credito49;
String credito50;
String credito51;
String credito52;
String credito53;
String credito54;
String credito55;
String credito56;
String credito57;
String credito58;
String credito59;
String credito60;
String credito61;
String credito62;
String credito63;
String credito64;
String credito65;
String credito66;
String credito67;
String credito68;
String credito69;
String credito70;
String credito71;
String credito72;
String credito73;
String credito74;

int movimiento;
float x, y;

int tiempo = 0;


void setup() {
  size (600, 600);
  minim= new Minim(this);
  player= minim.loadFile ("cancion.mp3");
  movimiento=600;

  x=0;
  y=0;


  textAlign(CENTER, CENTER);

  //cargo tipografia e imagenes


  creditos = createFont("Spongebob.ttf", 10);
  fondo = loadImage ("descarga.jpg"); 
  cursor = loadImage ("mouse.png");
  fin = loadImage ("fincreditos.png");


  //carga de creditos

  //CREDITOS 1
  credito = ("EXECUTIVE PRODUCER");
  credito1 = ("Stephen Hillenburg");
  //credito2
  credito2 = ("LINE PRODUCER");
  credito3 = ("Donna Castricone");
  //credito 3
  credito4 = ("ART DIRECTOR");
  credito5 = ("Nicholas R.Jennings");
  //credito 4
  credito6 = ("SUPERVISING DIRECTOR");
  credito7 = ("Alan Smart");
  //credito 5
  credito8 = ("STORY EDITOR");
  credito9 = ("Peter Burns");
  //credito 6
  credito10 = ("WRITERS");
  credito11 = ("Peter Burns");
  credito12 = ("Mr.Lawrence");
  credito13 = ("Derek Drymon");
  credito14 = ("Stephen Hillenburg");
  credito15 = ("SCRIPT COORDINATOR");
  credito16 = ("Alex Gordon");
  //credito 7
  credito17 = ("CAST");
  credito18 = ("Tom Kenny.........SPONGEBOB");
  credito19 = ("Roger Bumpass.........SQUIDWARD");
  credito20 = ("Clancy Brown........MR.KRABS");
  credito21 = ("Bill Fagerbakke.......PATRICK STAR");
  credito22 = ("Tom Kenny.....NARRATOR/GARY");
  credito23 = ("Carolyn Lawrence...SANDY CHEEKS");
  //CREDITO 8
  credito24 = ("CASTING DIRECTOR");
  credito25 = ("Donna Grillo");
  credito26 = ("CASTING COORDINATORS");
  credito27 = ("Alex Gordon");
  credito28 = ("Dawn Hershey");
  credito29 = ("EXECUTIVE ASSISTANTS");
  credito30 = ("Jennie Monica");
  credito31 = ("Dina Buteyn");
  //credito 9
  credito32 = ("RECORDING ENGINEER");
  credito33 = ("Al Johnson");
  credito34 = ("2ND ENGINEER");
  credito35 = ("Jim Leber");
  //credito 10
  credito36 = ("AUDIO SUPERVISOR/DIALOGUE EDITOR");
  credito37 = ("Tony Ostyn");
  credito38 = ("ANIMATIC OPERATOR");
  credito39 = ("Brian Robitaille");
  credito40 = ("ANIMATIC SCANNER");
  credito41 = ("Jon Delaurie");
  //credito 11
  credito42 = ("Help Wanted");
  credito43= ("SENIOR PRODUCER");
  credito44 = ("Michael Lessa");
  credito45 = ("PRODUCER");
  credito46 = ("Larry LeFrancis");
  credito47 = ("PRODUCTION EXECUTIVE");
  credito48 =("Andy Rheingold");
  //credito12
  credito49 = ("Reef Blower");
  credito50 = ("STORYBOARD DIRECTOR");
  credito51 = ("Paul Tibbitt");
  credito52 = ("STORYBOARD ARTIST");
  credito53 = ("Jay Lender");
  credito54= ("ANIMATION DIRECTORS");
  credito55 = ("Fred Miller");
  credito56 = ("Tom Yasumi");
  //credito13
  credito57 = ("ASSISTANT STORYBOARD ARTISTS");
  credito58 = ("Carl Greenblatt");
  credito59 = ("Bruce B. Heller");
  credito60 = ("Bill Reiss");
  //credito14
  credito61 = ("CHARACTER DESIGNER");
  credito62 = ("Todd White");
  credito63 = ("PROP DESIGNER");
  credito64 = ("Thaddeus Paul Couldron");
  credito65 = ("CLEAN-UP ARTISTS");
  credito66 = ("Soonjin Mooney");
  credito67 = ("Erik Wiese");
  credito68 = ("ARTIST INTERN");
  credito69 = ("Cynthia Tello");
  //credito15
  credito70 = ("LAYOUT SUPERVISOR");
  credito71 = ("Dave Gordon");
  credito72 = ("BG LAYOUT DESIGN");
  credito73 = ("Kenny Pittenger");
  credito74 = ("John Seymore");
}



void draw() {
  x=mouseX;
  y=mouseY;
  player.play();
  

  textFont (creditos);
  textSize (30);
  fill (255, 77, 193);
  background (fondo);
    tiempo = tiempo + 1 ;
  

  


  //Cambio de color en texto al presionar el mouse con uso de RANDOM

  if (mousePressed == true) {
    fill (random(300), random(300), random (300));
  }

  //CREDITOS CON USO DE AND MAS CURSOR DE BOB ESPONJA 


  if (tiempo>=10 && tiempo<=110) {
    text (credito, width/2, height/2-20 );
    text (credito1, width/2, height/2+30 );
  }
 

  if (tiempo>=150 && tiempo <=250) {
    text (credito2, width/2, height/2-20 );
    text (credito3, width/2, height/2+30 );
  } 

  if (tiempo>=280 && tiempo<=380) {
    text (credito4, width/2, height/2-20 );
    text (credito5, width/2, height/2+30 );
  } 

  if (tiempo>=400 && tiempo<=500) {
    text (credito6, width/2, height/2-20 );
    text (credito7, width/2, height/2+30 );
  }

  if (tiempo>=530 && tiempo<=630) {
    text (credito8, width/2, height/2-20 );
    text (credito9, width/2, height/2+30 );
  }

  if (tiempo>=660 && tiempo<=760) {
    text (credito10, width/2, height/2-200 );
    text (credito11, width/2, height/2-130 ); 
    text (credito12, width/2, height/2-60);
    text (credito13, width/2, height/2+10);
    text (credito14, width/2, height/2+80);
    text (credito15, width/2, height/2+150);
    text (credito16, width/2, height/2+220);
  }
  if (tiempo>=790 && tiempo<=890) {
    text (credito17, width/2, height/2-200 );
    text (credito18, width/2, height/2-130 ); 
    text (credito19, width/2, height/2-60);
    text (credito20, width/2, height/2+10);
    text (credito21, width/2, height/2+80);
    text (credito22, width/2, height/2+150);
    text (credito23, width/2, height/2+220);
  }

  if (tiempo>=910 && tiempo <=1010) {
    text (credito24, width/2, height/2-260 );
    text (credito25, width/2, height/2-190 ); 
    text (credito26, width/2, height/2-120);
    text (credito27, width/2, height/2-50);
    text (credito28, width/2, height/2+20);
    text (credito29, width/2, height/2+90);
    text (credito30, width/2, height/2+160);
    text (credito31, width/2, height/2+230);
  }

  if (tiempo>=1040 && tiempo<=1140) {
    text (credito32, width/2, height/2-80 );
    text (credito33, width/2, height/2-10 ); 
    text (credito34, width/2, height/2+70);
    text (credito35, width/2, height/2+140);
  }

  if (tiempo>=1170 && tiempo<=1270) {
    text (credito36, width/2, height/2-200 );
    text (credito37, width/2, height/2-130 ); 
    text (credito38, width/2, height/2-60);
    text (credito39, width/2, height/2+10);
    text (credito40, width/2, height/2+80);
    text (credito41, width/2, height/2+150);
  }
  if (tiempo>=1300 && tiempo<=1400) {
    text (credito42, width/2, height/2-200 );
    text (credito43, width/2, height/2-130 ); 
    text (credito44, width/2, height/2-60);
    text (credito45, width/2, height/2+10);
    text (credito46, width/2, height/2+80);
    text (credito47, width/2, height/2+150);
    text (credito48, width/2, height/2+220);
  }

  if (tiempo>=1430 && tiempo<=1530) {
    text (credito49, width/2, height/2-230 );
    text (credito50, width/2, height/2-160 ); 
    text (credito51, width/2, height/2-90);
    text (credito52, width/2, height/2-20);
    text (credito53, width/2, height/2+50);
    text (credito54, width/2, height/2+120);
    text (credito55, width/2, height/2+190);
    text (credito56, width/2, height/2+260);

  }
  if (tiempo>=1560 && tiempo<=1660) {
    text (credito57, width/2, height/2-80 );
    text (credito58, width/2, height/2-10 ); 
    text (credito59, width/2, height/2+70);
    text (credito60, width/2, height/2+140);
  }

  if (tiempo>=1690 && tiempo<=1790) {
    text (credito61, width/2, height/2-260 );
    text (credito62, width/2, height/2-200 ); 
    text (credito63, width/2, height/2-140);
    text (credito64, width/2, height/2-80);
    text (credito65, width/2, height/2-20);
    text (credito66, width/2, height/2+40);
    text (credito67, width/2, height/2+100);
    text (credito68, width/2, height/2+160);
    text (credito69, width/2, height/2+220);
  }

  if (tiempo>=1820 && tiempo<=1920) {
    text (credito70, width/2, height/2-80 );
    text (credito71, width/2, height/2-10 ); 
    text (credito72, width/2, height/2+70);
    text (credito73, width/2, height/2+140);
    text (credito74, width/2, height/2+210);
  }
  if (tiempo>=1950 && tiempo<=2150) {
    image (fin, 0, movimiento); 
  }
  
  //movimiento de imagen final
   if (tiempo>=1950 && tiempo<=2550) {
    image (fin, 0, movimiento); 
    movimiento=movimiento-1;
    
   }
  
  //permitir que el cursor aparezca en todos los creditos
  if (tiempo>=0 && tiempo<=2600){
    image (cursor, x, y );
  }

//reinicio de creditos y musica
  if (tiempo>=2600) {
    tiempo = 1;
    movimiento=600;
     x=0;
     y=0;
     player.rewind();
  }
}
