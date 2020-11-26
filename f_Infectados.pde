class Infectados {

  int cant;
  float velocidad;
  float ipx, ipy, idir, tam;
  boolean muerto, reaparecer;
  PImage infectado;

  Infectados () {
    ipx=random(x(900), y(1200));
    ipy= random(x(400), y(630));
    tam=100;
    velocidad=4;
    infectado= loadImage("infectados.png");
    cant=20;
    idir = random(1, 3);
    muerto=false;
    reaparecer=false;
  }
  // -----------------------------------------------------------------------------------------------------------------

  void dibujarInfectados() {

    if (reaparecer) {
      ipx=random(x(900), x(1200));
      ipy= random(y(400), y(630));
      reaparecer=false;
    }
    if (!muerto) {
      image(infectado, x(ipx), y(ipy), x(tam), y(tam));
    } else {

      ipx=0;
      ipy=0;
    }
  }
  // -----------------------------------------------------------------------------------------------------------------
  void mover() {
    if (ipx<0) {
      ipx=random(x(900), x(1200));
      ipy= random(y(400), y(630));
    }
    ipx-=0.1/velocidad;
    ipx -=idir;
  }

  void reaparecer() {

    reaparecer=true;
  }




  // -----------------------------------------------------------------------------------------------------------------
  void muerenInfectados () {
    muerto=true;
  }

  float x(float valor) {
    return round(map(valor, 0, 1024, 0, width));
  }

  float y(float valor) {
    return round(map(valor, 0, 768, 0, height));
  }
}
