void opciones() {

/* if (estado.equals("escena1")) { //primer cartel escena1
    if (boton(580, 770, 450, 517)) { 
      salir=true;
      comenzar=false;// sino se inicializa en true cada frame
      estado="escena1";
      cartelext=true;
    }
 }*/


    //opción rodear
    if (estado.equals("rodear") && cartelrod==false) {
      if (boton (424, 570, 465, 533)) {

        estado="investigando";
        cartelrod=true;
        loop();
      }
    }
    //opción investigar

    if (estado.equals("investigando") && cartelinv==false) {
      if (boton (231, 420, 450, 517)) {
        estado="infectados";
        cartelinv=true;
        loop();
      }
      if (boton(580, 770, 450, 517)) {
        estado="sobrevivientes";
        cartelinv=true;
        loop();
      }
    }
    //opción sobrevivientes

    if (estado.equals("sobrevivientes")) {
      if (boton (231, 420, 450, 517) && cartelsob==false) {
        estado="creditos";
        cartel=true;
        loop();
      }

      if (boton(580, 770, 450, 517) && cartelsob==false) {
        estado="escena1";
        loop();
        cartelsob=true;
      }
    }

    //opción infectados
    if (estado.equals("infectados") && cartelinf==false) {
      if (boton (231, 420, 450, 517)) {
        estado="rodear";
        cartelinf=true;
        loop();
      }
      if (boton(580, 770, 450, 517)) {
        estado="luchar";
        cartelinf=true;
        loop();
      }
    }

    // lucha 

    if (estado.equals("luchar") ) {
      if (boton (231, 420, 450, 517)&& cartellucha==false) {
        estado="creditos";
        cartellucha=true;
        loop();
      }
      if (boton(580, 770, 450, 517)&& cartellucha==false) {
        estado="escena1";
        cartellucha=true;
        loop();
      }
    }
  }
