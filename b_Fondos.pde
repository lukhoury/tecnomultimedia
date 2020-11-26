class Fondos {  // fondos y carteles

  PImage [] fondos = new PImage[6];
  PImage [] carteles = new PImage[12];

  boolean cartel;
  PFont titulo, tipo;
  float pos,py;
  float fx, fy;
  float cx,cy;




  Fondos () {

    for (int j=0; j<6; j++) {
      fondos[j] = loadImage( j+20 + ".png");
      println( j+20 + ".png");
    }

    for (int i=0; i<11; i++) {

      carteles[i] = loadImage( i + ".png");
      println( i + ".png");
    }
    pos=width/4;
    py=width/2;
    tipo= loadFont("AgencyFB-Bold-48.vlw");
    titulo= loadFont("1942report-48.vlw");
    textFont(titulo, 100);
    cartel=true;
    imageMode(CENTER);
  }

  // ----------------------------------------------------------------------------------- void para pasar las variables de proporcion del resize
  void fondosProporcion(float rX, float rY) {

    fx=rX;
    fy=rY;
  }
  void cartelProporcion(float rX, float rY) {

    cx=rX;
    cy=rY;
  }




  //-----------------------------------------------------------------------------------  CARTELES DE LA AVENTURA

  void cartelCasa(boolean cartel, String estado) {
    if (estado.equals("escena1") && cartel==true ) {

      image(carteles[0], cx,cy,cx,cy);
    }
  }

  void cartelTv(boolean carteltv, String estado) {
    if (estado.equals("escena1") && carteltv==true ) {
      image(carteles[2], cx,cy,cx,cy);
    }
  }

  void cartelFlecha(boolean cartelExterior, String estado) {
    if (estado.equals("escena2") && cartelExterior==true) {
      image(carteles[3], cx,cy,cx,cy);
    }
  }

  void cartelArbustos(boolean cartelArbusto, String estado) {
    if (estado.equals("escena2") && cartelArbusto==true) {
      image(carteles[4], cx,cy,cx,cy);
    }
  }

  void cartelSupermercado(boolean cartelSuper, String estado) {
    if (estado.equals("escenasuper") && cartelSuper==true) {
      image(carteles[5], cx,cy,cx,cy);
    }
  }

  void cartelEleccion(boolean cartelInvestigando, String estado) {  // investigando, infectados o sobrevivientes
    if (estado.equals("investigando") && cartelInvestigando==true) {
      image(carteles[6], cx,cy,cx,cy);
    }
  }

  void cartelBasura(boolean cartelRodeando, String estado) {
    if (estado.equals("rodear") && cartelRodeando==true) {
      image(carteles[7], cx,cy,cx,cy);
    }
  }

  void cartelSobrevivientes(boolean cartelSobrevivientes, String estado) {
    if (estado.equals("sobrevivientes") && cartelSobrevivientes==true) {
      image(carteles[8], cx,cy,cx,cy);
    }
  }

  void cartelLuchar(boolean cartelInfectados, String estado) {   // estado infectados
    if (estado.equals("infectados") && cartelInfectados==true) {
      image(carteles[9], cx,cy,cx,cy);
    }
  }
  //----------------------------------------------------------------------------------- carteles del Juego
  void cartelInfectadosGanar() {
    image(carteles[10], width/2,height/2,width/2,height/2);
  }
  void cartelInfectadosPerder() {

 //   image(carteles[11], width/2,height/2,width/2,height/2);
  }

  //----------------------------------------------------------------------------------- FONDOS
  void escenaCasa() {
    image(fondos[0], cx,cy, fx, fy);
  }
  void escenaExterior() {
    image(fondos[1], cx,cy, fx, fy);
  }
  void escenaSupermercado() {
    image(fondos[2],cx,cy, fx, fy);
  }
  void escenaCreditos() {
    image(fondos[3],cx,cy, fx, fy);
  }
  void escenaSobrevivientes() {
    image(fondos[4], cx,cy, fx, fy);
  }


  //-----------------------------------------------------------------------------------  TITULO DE LA AVENTURA 

  void inicioInicio() {


    fill(255, pos);
    text("CoronaTime", cx-300, cy);
    noFill();
    tint(0, 179, 255, pos);
    pos-=1;
    map (pos, 255, 200, 0, 13);
    noTint();
  }


  // ----------------------------------------------------------------------------------- ESTADO PRESENTACIÓN


  void presentacionPresentacion() {



    textFont(titulo, 25);
    fill(255); 
    text("27 de junio del 2021", cx-150, cy-250);
    textAlign(CENTER);
    textSize(20);
    text("Mi nombre es Nachito, hace tiempo la pandemia ha terminado. Han quedado \n \n solo unos pocos sobrevivientes  de la gran masacre y rumores sobre \n \n infectados vivos que ya no son lo mismo que antes. \n \n \n TENGO QUE SOBREVIVIR.", cx,cy-100 );
    fill(255, 0, 0);
    textFont(tipo, 20);
    text("COMENZAR",cx,cy+200);
    text("PARA INTERACTUAR PODRÁS USAR EL MOUSE, Y TECLAS COMO LAS FLECHAS Y EL SPACE", cx, cy+150);
  }
  // -----------------------------------------------------------------------------------  CREDITOS
  void creditos () {
    escenaCreditos();
    py-=2;
    textSize(25);
    fill(139,0,227);
    text("Créditos \n \n Alumna: Lucrecia Khoury \n \n Profesor: Jose Luis Bugiolachi \n \n Tecnología Multimedial I \n \n Facultad de Bellas Artes - UNLP \n \n  APRETA ENTER PARA SALIR", cx, height/2); 

    if (py==300) {

      noLoop();
    }
  }


 
}
