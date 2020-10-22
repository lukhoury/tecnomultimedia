


class Juego {
  int cantidad;
  int cant;
  int vida;
  int tam;
  float pos,a;
  boolean comenzar;
  PFont texto;



  Infectados [] zombie = new Infectados [20]; 
  Personaje nachito;
  Menu menu;
  Bala bala;






  Juego() {
    cantidad=20;
    tam=50;
    pos=255;
    vida=3;
    cant=20;
    a=0.1;
    menu = new Menu ();
    texto= loadFont("Candara-48.vlw");
    nachito = new Personaje();
    bala= new Bala();
    



    for (int i=0; i<cant; i++) {
      zombie[i]= new Infectados();
    }
  }

  void menuMenu() {
    menu.dibujarMenu();
    menu.activadorMenu(comenzar);
  }

  void dibujarJuego() {
    activadorperderJuego();
    perderVidas();
    nachito.dibujarPersonaje();  
    matarInfectados();
    activadorganarJuego();


    textSize(25);
    fill(66, 255, 5);
    textFont(texto);
    textSize(20);
    text("Te quedan " + vida + " vidas", width/2, height/3-tam);
    text("y " + cantidad + " infectados", width/2, height/3);



    for (int i=0; i<cant; i++) {

      zombie[i].dibujarInfectados();  // SE DIBUJA A LOS INFECTADOS
      zombie[i].mover();
    }
  }


  void matarInfectados() {


    for (int i=0; i<cant; i++) {
      float distan = dist(zombie[i].ipx, zombie[i].ipy, nachito.bala.bpx, nachito.bala.bpy );
      if (distan <= zombie[i].tam/2 ) {
        zombie[i].muerenInfectados();
        nachito.bala.desactivarBala();
        cantidad-=1;
      }
    }
  }



  void dispararBala(int tecla) {
    if (tecla == CONTROL) {
      nachito.dispararBala();
      sbala.amp(a);
      sbala.play();
    } else {
      bala.desactivarBala();
      sbala.stop();
    }
  }

  void perderVidas() {
    for (int i=0; i<cant; i++) { 
      boolean perder = zombie[i].ipx>nachito.px && zombie[i].ipx<nachito.px+nachito.tam/2 
        && zombie[i].ipy>nachito.py && zombie[i].ipy<nachito.py+nachito.tam*2;
      if (perder) {
        vida -=1;
        zombie[i].muerenInfectados();
      }
    }
  }

  void activadorperderJuego() {
    if (vida==0) {
      estado="perder";
    }
  }


  void perderJuego() {

    background(255, 0, 0);
    fill(255);


    textAlign(CENTER);
    text("Has perdido, mejor elije otro camino...", width/2, height/2);
  }




  void activadorganarJuego() {
    if (cantidad==0) {
      estado="ganar";
    }
  }
  void ganarJuego() {

    background(33, 255, 98);
    fill(255);

    textAlign(CENTER);
    text("Has ganado, sigue tu camino, suerte...", width/2, height/2);
  }
}
