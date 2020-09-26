void botones () {
  
  //BOTONES FALSE
  if (boton(424, 573, 462, 531)) { // CERRAR CARTEL ESCENA 1
    if (estado.equals("escena1") && cartel==true) {
      cartel=false;
      estado = "escena1";
    }

    if (estado.equals("escena2")) { //CERRAR CARTEL INICIAL ESCENA EXTERIOR
      cartelext=false;
    }
    /*if (estado.equals("escenasuper")) {
     cartel_super=false;
     }*/
  }

// INICIO
// BOTON COMENZAR
if (estado.equals("presentacion") && boton(465, 554, 624, 642)) {
  comenzar=true;
}


// ESCENA CASA 
if (estado.equals("escena1")) {
  if (boton(403, 592, 435, 505) && cartel22==true) { //salir a traves de tv
    salir=true;
    comenzar=false;// sino se inicializa en true cada frame
    estado="escena2";
    cartel22=false;
    cartelext=true;
  }
  if (boton(353, 445, 71, 362) && cartel22==false) { //salir por la puerta
    salir=true;
    comenzar=false;// sino se inicializa en true cada frame
    estado="escena2";
    cartelext=true;
  }
}
//ESCENA EXTERIOR DE LA CASA
// BOTON FLECHA SUPERMERCADO
if (boton(825, 910, 503, 590) && estado.equals("escena2")) {  
  cartel_super=true;
  estado="escenasuper";
}

//ESCENA SUPERMERCADO
if (estado.equals("escenasuper") ) {
  if (boton (229, 420, 450, 517)) {
    estado="rodear";
    cartelrod=true;
    cartel_super=false;
  }
  if (boton(580, 770, 450, 517) ) {
    estado="investigando";
    cartelinv=true;
    cartel_super=false;
  }
}
}
