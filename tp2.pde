PFont tipo;  
PImage img; // imagen de fondo
PImage titulo;
float x, y;
float px;
float TransTitulo;
float tinta;
float primera, segunda, tercera, cuarta, quinta;
float ColorEnter;

void setup () {

  size(600, 400);
  // PANTALLA TITULO

  x=width/2;         //PUNTOS RANDOM
  y=height/2;
  TransTitulo=255;  // TRANSPARENCIA TITULO
  ColorEnter=255;     // TRANSPARENCIA ENTER

  // PANTALLA CREDITOS

  px=100;       //POSICION X CREDITOS

  primera= -350;     // CREDITOS 1
  segunda=-800; // CREDITOS 2
  tercera =-1300;// CREDITOS 3
  cuarta= -1800;  //CREDITOS 4
  quinta= -2300; // CREDITOS 5



  tipo= loadFont("BodoniMTCondensed-48.vlw");
  textFont(tipo, 30);


  titulo= loadImage("titulo.png");
  img = loadImage("original.gif");

  noLoop();
}

void draw () {

  //PANTALLA TITULO
  
  background(0);

  image(img, 0, 0, 600, 400);

  tint(255, TransTitulo); 
  image (titulo, 180, 30, 200, 200);

  TransTitulo -=1.5;

  noTint();

 
  tint(0, 153, 204, 180);  //fondo azul



  fill(254, 255, 64, ColorEnter);
  text("PRESIONE UNA TECLA", 190, 390);
  ColorEnter -=40;

  strokeWeight(3);
  fill(0);
  x= random(width);
  y= random(height);
  point(x, y);

  // PRIMER PANTALLA PERSONAJES


  fill(255);

  primera+=1;

  text("Eleven                Millie Bobby Brown", px, primera);

  text("Mike Wheeler      Finn Wolfhard", px, primera-px/2);

  text("Will Byers           Noah Schnapp", px, primera-px);

  text("Dustin                Gaten Matarazzo", px, primera-px-px/2);

  text("Lucas                 Caleb McLaughlin", px, primera-px*2);

  //SEGUNDA PANTALLA PERSONAJES


  segunda+=1;
  
  text("Nancy               Natalia Dyer", px, segunda);

  text("Max                   Sadie Sink", px, segunda-px/2);

  text("Joyce                 Winona Ryder ", px, segunda-px);

  text("Hopper              David Harbour", px, segunda-px-px/2);

  text("Jonathan            Charlie Heaton", px, segunda -px*2);

  // TERCER PANTALLA PRODUCCIÓN JUEGO  


  tercera +=1;
  
  text("Desarrollador              BonusXP", px, tercera);

  text("Distribuidor               Netflix & BonusXP, Inc.", px, tercera - px/2);

  text("Plataformas                 iOS, Android", px, tercera - px);

  text("Lanzamiento             3 de octubre,2017", px, tercera - px-px/2);

  // CUARTA PANTALLA FICHA TECNICA SERIE 


  cuarta+=1;
  
  text("Shaw Levy", px, cuarta);

  text("Matt Duffer", px, cuarta  - px/2);

  text("Ross Duffer", px, cuarta - px);

  text("Dirigida por:", px, cuarta- px-px/2);
  
  // QUINTA PANTALLA FICHA TECNICA
  
  
  quinta+=1;

  text("Kyle Dixon & Michael Stein ", px, quinta);

  text("Música por: ", px, quinta-px/2);
  
}

void keyPressed () {

    loop();
 
}
