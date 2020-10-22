class Infectados {

  int cant, tam;
  float velocidad;
  float ipx, ipy, idir;
  boolean muerto;
  PImage infectado;





  Infectados () {
    tam=100;
    ipx=random(900, 1200);
    ipy= random(400, 630);
    velocidad=4;
    infectado= loadImage("infectados.png");
    cant=20;
    idir = random(1, 3);
    muerto=false;
  }

  void dibujarInfectados() {

    if (!muerto) {
      image(infectado, ipx, ipy, tam, tam);
    } else {

      ipx=0;
      ipy=0;
    }
  }

  void mover() {
    if (ipx<0) {
      ipx=random(900, 1200);
      ipy= random(400, 630);
    }
    ipx-=0.1/velocidad;
    ipx -=idir;
  }
  void muerenInfectados () {
    muerto=true;
  }
}
