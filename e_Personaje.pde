class Personaje {
  PImage personaje;
  float px, py;
  int tam;
  
  Bala bala;

  Personaje () {
    px=50;
    py=500;
    tam=250;
    personaje= loadImage("personaje.png");
    bala = new Bala();
  }
  // -----------------------------------------------------------------------------------------------------------------
  void dibujarPersonaje() {

    image(personaje, px, py, tam,tam);
    bala.dibujar(px+105, py-25);
    moverPersonaje ();
  }
  // -----------------------------------------------------------------------------------------------------------------
  void dispararBala() {

    bala.dispararBala();
  }
  // -----------------------------------------------------------------------------------------------------------------
  void moverPersonaje () {

    if (mouseY>350 && mouseY<630) { 
      py=mouseY;
    }
  }
  
  
  
  
  float x(float valor) {
    return round(map(valor, 0, 1024, 0, width));
  }

  float y(float valor) {
    return round(map(valor, 0, 768, 0, height));
  }
 
}
