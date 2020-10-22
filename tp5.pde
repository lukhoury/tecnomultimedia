import processing.sound.*;
SoundFile file, sbala;



Juego game;
PImage fondo; 
String estado;
float a;



void setup () {
  size (1024, 768);
  game = new Juego();
  fondo= loadImage("23.png");
  estado="menu";
  a=0.1;

  file= new SoundFile(this, "musicafondo.mp3");
  sbala= new SoundFile(this, "disparo.mp3");

  file.amp(a);
  file.play();
}

void draw () {

  image(fondo, 0, 0);


  if (estado.equals("menu") ) {

    game.menuMenu();
  }

  if (estado.equals("juego")  ) {   
    game.dibujarJuego();
  }

  if (estado.equals("ganar") ) {
    game.ganarJuego();
    file.stop();
  }

  if (estado.equals("perder")) {


    game.perderJuego();
    file.stop();
  }
}


void keyPressed() {
  game.dispararBala(keyCode);
}
