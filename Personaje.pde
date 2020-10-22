class Personaje {
  PImage personaje;
  int px, py, tam;
  Bala bala;

  Personaje () {
    px=50;
    py=500;
    tam=250;
    personaje= loadImage("personaje.png");
    bala = new Bala();
  }

  void dibujarPersonaje() {

    image(personaje, px, py, tam, tam);
    bala.dibujar(px+223, py+95);
    moverPersonaje ();
  }

  void dispararBala() {

    bala.dispararBala();
  }

  void moverPersonaje () {

    if (mouseY>350 && mouseY<630) { 
      py=mouseY;
    }
  }
}
