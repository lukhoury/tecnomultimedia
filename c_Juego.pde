
class Juego {

  int cantidad, cant, vida;
  int tam;
  float pos, a;
  boolean comenzar;
  PFont texto, titulo;
  String ejuego;
  float jx, jy;
  PImage perder;

  Infectados [] zombie = new Infectados [20]; 
  Personaje nachito;
  Bala bala;
  Fondos fondos;


  Juego() {
    resetVariables();
  }
  // -----------------------------------------------------------------------------------------------------------------
  void resetVariables() {

    ejuego="menu";
    cantidad=20;
    pos=255;
    tam=50;
    vida=3;
    cant=20;
    jx= x(0);
    jy= y(0);
    a=0.1;
    perder= loadImage("11.png");
    texto= loadFont("Candara-48.vlw");
    nachito = new Personaje();
    bala= new Bala();
    fondos= new Fondos();
    titulo= loadFont("CalifornianFB-Bold-48.vlw");

    for (int i=0; i<cant; i++) {
      zombie[i]= new Infectados();
    }
  }
  // -----------------------------------------------------------------------------------  MENU CON COMENZAR PARA EMPEZAR EL JUEGO, ACA SE CONECTA POR PRIMERA VEZ A LA AVENTURA (SE LLAMA EN EL ESTADO MENÚ)
  void dibujarMenu() {
    println(activadorganarJuego());
    println(activadorperderJuego());

    fill(255);
    textFont(titulo);
    textAlign(CENTER);
    textSize(100);
    text("Cuarentime",x(512),y(256));

    textFont(titulo);
    textSize(25);

    text("Para mover el personaje solo debes mover el mouse \n \n Para disparar debes apretar la tecla CONTROL", x(512), y(384));

    fill(255, 0, 0);
    textSize(35);
    text("COMENZAR", x(516), y(512));
  }
  
  
  
  /*void juegoProporcion(float jX,float jY) {
    
    jX= jx;
    jY=jy;
  */

  
  // ----------------------------------------------------------------------------------- DIBUJO EL JUEGO
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
    text("Te quedan " + vida + " vidas", x(512),y(206));
    text("y " + cantidad + " infectados", x(512), y(256));



    for (int i=0; i<cant; i++) {

      zombie[i].dibujarInfectados();  // SE DIBUJA A LOS INFECTADOS
      zombie[i].mover();
    }
  }

  // -----------------------------------------------------------------------------------  COLICCION DE LA BALA Y LOS ZOMBIES 
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

  // -----------------------------------------------------------------------------------  DISPARAR CON CTROL

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

  // -----------------------------------------------------------------------------------  CONTROLO LAS VIDAS PARA SABER CUANDO TERMINA EL JUEGO 

  void perderVidas() {
    for (int i=0; i<cant; i++) { 
      boolean perder = zombie[i].ipx>nachito.px && zombie[i].ipx<nachito.px+nachito.tam/2 
        && zombie[i].ipy>nachito.py && zombie[i].ipy<nachito.py+nachito.tam*2;
      if (perder) {
        vida -=1;
        zombie[i].reaparecer();
      }
    }
  }

  boolean activadorperderJuego() {
    if (vida==0) {
      return true;
    } else 
    return false;
  }

  //-----------------------------------------------------------------------------------  PERDER
  void perderJuego() {
    fondos.escenaCreditos();    
   image(perder,width/2,height/2,width/2,height/2);
  }


  // -----------------------------------------------------------------------------------  VOID CUANDO GANA EL JUEGO, MATANDO A TODOS LOS ZOMBIES

  boolean activadorganarJuego() {
    if (cantidad==0) {
      return true;
    } else
      return false;
  }
  void ganarJuego() {
    fondos.cartelInfectadosGanar();
  }


  float x(float valor) {
    return round(map(valor, 0, 1024, 0, width));
  }

  float y(float valor) {
    return round(map(valor, 0, 768, 0, height));
  }
}
