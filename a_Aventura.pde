class Aventura {

  Juego game;
  Fondos fondos;
  Boton boton;

  String estado, ejuego;
  boolean comenzar, bloqueo, cerrar;
  float a;
  boolean ok, juego, perder, ganar, cartel, carteltv, cartelExterior, cartelSuper, cartelInvestigando, cartelRodeando, cartelInfectados, cartelSobrevivientes; // estos boolean son para manejar los carteles
  int tam, py;
  boolean escena1, escena2, escenasuper, investigando, sobrevivientes, rodear, infectados, creditos;  



  Aventura () {
    surface.setResizable(true);
    resettVariables();
  }

  // ---------------------------------------------------------------------------------------- hice el void de reset para que las variables vuelvan a 0, antes me aparecian pantallas en cualquier momento
  void resettVariables() { 
    py=800;
    perder=true;
    ganar= true;
    estado="inicio";
    fondos=new Fondos();
    game = new Juego();
    boton= new Boton();
    comenzar=false;
    cartel=false;
    carteltv=false;
    cartelExterior=false;
    cartelSuper=false;
    cartelInvestigando=false;
    cartelRodeando=false;
    cartelInfectados=false;
    cartelSobrevivientes=false;
    sobrevivientes=false;
  }


  // --------------------------------------------------------------------------------------  void con el paso de estados para recorrer la aventura 
  void dibujarAventura() {

    println("estado es : " + estado);
    fondos.fondosProporcion(rX(1024), rY(768));
    fondos.cartelProporcion(rX(512), rY(384));


    // ----------------------------------------------------------
    if (estado.equals("inicio")) {
      fondos.inicioInicio();
    }
    // ----------------------------------------------------------
    if (frameCount>300 && estado.equals("inicio")) {  
      estado = "presentacion";
    }
    // ----------------------------------------------------------
    if (estado.equals("presentacion")) {
      fondos.presentacionPresentacion();
    }
    // ----------------------------------------------------------
    if (estado.equals("escena1")) {
      game.resetVariables();
      fondos.escenaCasa();
      fondos.cartelCasa(cartel, estado);
      fondos.cartelTv(carteltv, estado);
    }

    // ----------------------------------------------------------
    if (estado.equals("escena2")) {
      fondos.escenaExterior();
      fondos.cartelFlecha(cartelExterior, estado);
    }
    // ----------------------------------------------------------
    if (estado.equals("escenasuper")) {
      fondos.escenaSupermercado();
      fondos.cartelSupermercado(cartelSuper, estado);
    }
    // ----------------------------------------------------------
    if (estado.equals("investigando")) {
      fondos.escenaSupermercado();
      fondos.cartelEleccion(cartelInvestigando, estado);
      sobrevivientes=true;
    }
    // ----------------------------------------------------------
    if (estado.equals("rodear")) {
      fondos.escenaSupermercado();
      fondos.cartelBasura(cartelRodeando, estado);
    }
    // ----------------------------------------------------------
    if (estado.equals("sobrevivientes") && sobrevivientes==true) {
      fondos.escenaSobrevivientes();
      fondos.cartelSobrevivientes(cartelSobrevivientes, estado);
    }
    // ----------------------------------------------------------
    if (estado.equals("infectados")) {
      fondos.escenaCreditos();
      fondos.cartelLuchar(cartelInfectados, estado);
    }
    // ----------------------------------------------------------
    activadorJuego();
    // ----------------------------------------------------------
    if (estado.equals("creditos")) {
      fondos.creditos();
      salirCreditos(keyCode);
      noLoop();
    }
  }


  //--------------------------------------------------------------------------------------- proporcion para el resize
  float rX(float valor) {
    return round(map(valor, 0, 1024, 0, width));
  }

  float rY(float valor) {
    return round(map(valor, 0, 768, 0, height));
  }

  float rX_(float valor) {
    return round(map(valor, 0, 1024, 0, width));
  }

  float rY_(float valor) {
    return round(map(valor, 0, 768, 0, height));
  }


  // ----------------------------------------------------------------------------------- declaro las diferentes funciones de boton

  void botonesAventura() {



    if (estado.equals("presentacion")) {
      if (boton.botones(rX(475), rX_(545), rY(570), rY_(585)) && comenzar==false) {
        estado="escena1";
        cartel=true;
        comenzar=true;
      }
    }

    // ----------------------------------------------------------
    if (estado.equals("escena1")) {

      if (boton.botones(rX(464), rX_(560), rY(512), rY_(560)) && cartel==true) {  //cartel
        cartel=false;
      }

      if (boton.botones(rX(0), rX_(102), rY(238), rY_(419)) ) { // apreta tv
        carteltv=true;
      }

      if (boton.botones(rX(451), rX_(572), rY(489), rY_(542)) && cartel==false && carteltv==true ) { //cartel tv 
        estado="escena2";
        cartelExterior=true;
      }

      if (boton.botones(rX(353), rX_(445), rY(71), rY_(362)) && cartel==false ) { //salir por la puerta
        estado="escena2";
        cartelExterior=true;
      }
    }

    // ----------------------------------------------------------

    if (estado.equals("escena2")) {

      if (boton.botones(rX(464), rX_(560), rY(510), rY_(560)) && cartelExterior==true) {  //cartelExterior
        cartelExterior=false;
      }
      if (boton.botones(rX(825), rX_(910), rY(503), rY_(590))) { //seguir por la flecha
        estado="escenasuper";
        cartelSuper=true;
      }
    }


    // ----------------------------------------------------------
    if (estado.equals("escenasuper") && cartelSuper==true) { 
      if (boton.botones(rX(329), rX_(461), rY(500), rY_(553))) { // RODEAR
        cartelSuper=false;
        estado="rodear";
        cartelRodeando=true;
      }
      if (boton.botones(rX(564), rX_(685), rY(500), rY_(553)) ) {  // INVESTIGANDO
        cartelSuper=false;
        estado="investigando";
        cartelInvestigando=true;
      }
    }
    // ----------------------------------------------------------
    if (estado.equals("sobrevivientes") && cartelSobrevivientes==true) {

      if (boton.botones(rX(329), rX_(461), rY(500), rY_(553))) {
        cartelSobrevivientes=false;
        estado="creditos";
      }
      if (boton.botones(rX(564), rX_( 685), rY(500), rY_(553))) {
        cartelSobrevivientes=false;
        estado="escena1";
        resettVariables();
      }
    }
    // ----------------------------------------------------------
    if (estado.equals("rodear") && cartelRodeando==true ) {
      if (boton.botones(rX(464), rX_(560), rY(510), rY_(560)) ) {
        cartelRodeando=false;
        estado="investigando";
        cartelInvestigando=true;
      }
    }
    // ----------------------------------------------------------
    if (estado.equals("investigando") && cartelInvestigando==true) {



      if (boton.botones(rX(329), rX_(461), rY(500), rY_(553))) {  //----------------------------------------------------------------------------------- OPCION INFECTADOS

        cartelInvestigando=false;
        estado="infectados";
        cartelInfectados=true;
      }

      if (boton.botones(rX(564), rX_(685), rY(500), rY_(553))&& sobrevivientes==true) {  //------------------------------------------------------------  OPCION SOBREVIVIENTES

        cartelInvestigando=false;
        estado="sobrevivientes";
        cartelSobrevivientes=true;
      }
    }
    // ----------------------------------------------------------
    if (estado.equals("infectados") && cartelInfectados==true) {

      if (boton.botones(rX(329), rX_(461), rY(500), rY_(553))) { 
        cartelInfectados=false;
        estado="menu";
      }

      if (boton.botones(rX(564), rX_(685), rY(500), rY_(553))) {
        cartelInfectados=false;
        estado="menu";
      }
    }
  }




  //----------------------------------------------------------------------------------- void activador del juego, a partir del mismo String estado de la aventura, para vincularlo con la class Juego

  void activadorJuego() {

    if (estado.equals("menu")) {
      perder=true;
      game.resetVariables();
      game.dibujarMenu();
      if (mousePressed) {
        if (boton.botones(rX(414), rX_(621), rY(485), rY_(513))) {
          juego =true;
          estado="juego";
        }
      }
    }

    // ----------------------------------------------------------
    if (estado.equals("juego") && juego == true) {
      perder= true;
      fondos.escenaCreditos();
      game.dibujarJuego();
    }
    if (game.activadorperderJuego()) {
      if (perder) {
        game.perderJuego();
        estado= "perder";
      }
      if (mousePressed) {
        if (boton.botones(rX(261), rX_(437), rY(471), rY_(529))) { 
          game.resetVariables();
          estado= "rodear";
          cartelRodeando= true;
          perder=false;
        }
        if (boton.botones(rX(584), rX_(761), rY(471), rY_(529))) { 
          estado= "menu";
          perder=false;
        }
      }
    }

    // ----------------------------------------------------------
    if (game.activadorganarJuego()|| estado.equals("ganar")) {
      if (ganar) {
        estado= "ganar";
        game.ganarJuego();
      }
      if (mousePressed) {
        if (boton.botones(rX(261), rX_(437), rY(471), rY_(529))) {
          estado= "creditos";
          ganar=false;
        }
        if (boton.botones(rX(584), rX_(761), rY(471), rY_(529))) { 
          estado= "escena1";
          ganar=false;
        }
      }
    }
  }
  // -------------------------------------------------------------------------------------- VOID DONDE UNO TODAS LAS TECLAS QUE SE USAN EN EL TP
  void teclas() {

    salirCreditos(keyCode);
    dispararJuego();
  }
  // --------------------------------------------------------------------------------------
  void salirCreditos(int tecla) {
    if (tecla == ENTER ) {
      resettVariables();
      loop();
    }
  }


  // --------------------------------------------------------------------------------------

  void dispararJuego() {

    game.dispararBala(keyCode);
  }
}
