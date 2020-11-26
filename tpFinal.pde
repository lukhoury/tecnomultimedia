import processing.sound.*;
SoundFile fondo, sbala, click; 
Aventura aventura; 

void setup () {
  size(1024, 768); 

  aventura = new Aventura();


  sbala= new SoundFile(this, "disparo.mp3");
  fondo= new SoundFile(this, "musicadefondo.mp3");
  click= new SoundFile(this, "sonido-de-click.mp3");

  fondo.play();
  fondo.loop();
}


void draw () {
  background(0);
  println ("X" + mouseX);
  println ("Y" + mouseY);
  aventura.dibujarAventura();
}

void mousePressed () {
  aventura.botonesAventura();
  click.play();
}

void keyPressed() {
  aventura.teclas();
  sbala.play();
}
