void sale_puerta() {
  if (mouseX>=353 && mouseX<=445 && mouseY>= 71 && mouseY<=362 && estado.equals("escena1")) {
    salir=true;
    comenzar=false;// sino se inicializa en true cada frame
    estado="escena2";
    cartelext=true;
  }
}
