void opciones() {
  if (mouseX >= 230 && mouseX<=420 && mouseY >=450 && mouseY <=520 && estado.equals("escena1")) {
    estado="creditos";
    comenzar=false;
  }
  if (mouseX >=579  && mouseX<=770 && mouseY >= 450 && mouseY <=520 && estado.equals("escena1")) {
    salir=true;
    comenzar=false;// sino se inicializa en true cada frame
    estado="escena2";
    cartelext=true;
  }
  if (mouseX>= 229 && mouseX <= 420 && mouseY >= 450 && mouseY<=520 && estado.equals("escenasuper")) {
    estado="rodear";
    cartelrod=true;
  }
  if (mouseX>= 580 && mouseX <= 770 && mouseY >= 450 && mouseY<=520 && estado.equals("escenasuper")) {
    estado="investigando";
  }
  //opción rodear
  if (mouseX>= 229 && mouseX <= 420 && mouseY >= 450 && mouseY<=520 && estado.equals("rodear") && cartelrod==false) {
    estado="creditos";
    cartelrod=true;
    loop();
  }
  if (mouseX>= 580 && mouseX <= 770 && mouseY >= 450 && mouseY<=520 && estado.equals("rodear")&& cartelrod==false) {
    estado="investigando";
    cartelrod=true;
    loop();
  }
  //opción investigar

  if (mouseX>= 229 && mouseX <= 420 && mouseY >= 450 && mouseY<=520 && estado.equals("investigando") && cartelinv==false) {
    estado="infectados";
    cartelinv=true;
    loop();
  }
  if (mouseX>= 580 && mouseX <= 770 && mouseY >= 450 && mouseY<=520 && estado.equals("investigando")&& cartelinv==false) {
    estado="sobrevivientes";
    cartelinv=true;
    loop();
  }
  //opción sobrevivientes

  if (mouseX>= 229 && mouseX <= 420 && mouseY >= 450 && mouseY<=520 && estado.equals("sobrevivientes") && cartelsob==false) {
    estado="creditos";
    cartel=true;
    loop();
  }
  if (mouseX>= 580 && mouseX <= 770 && mouseY >= 450 && mouseY<=520 && estado.equals("sobrevivientes")&& cartelsob==false) {
    estado="escena1";
    loop();
    cartelsob=true;
  }

  //opción infectados
  if (mouseX>= 229 && mouseX <= 420 && mouseY >= 450 && mouseY<=520 && estado.equals("infectados") && cartelinf==false) {
    estado="rodear";
    cartelinf=true;
    loop();
  }
  if (mouseX>= 580 && mouseX <= 770 && mouseY >= 450 && mouseY<=520 && estado.equals("infectados")&& cartelinf==false) {
    estado="luchar";
    cartelinf=true;
    loop();
  }

  // lucha 

  if (mouseX>= 229 && mouseX <= 420 && mouseY >= 450 && mouseY<=520 && estado.equals("luchar") && cartellucha==false) {
    estado="creditos";
    cartellucha=true;
    loop();
  }
  if (mouseX>= 580 && mouseX <= 770 && mouseY >= 450 && mouseY<=520 && estado.equals("luchar")&& cartellucha==false) {
    estado="escena1";
    cartellucha=true;
    loop();
  }
}
