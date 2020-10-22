class Menu {
  boolean comenzar;
  PFont titulo, descripcion;

  Menu() {

    comenzar= false;
    titulo= loadFont("CalifornianFB-Bold-48.vlw");
    descripcion= loadFont("Candara-48.vlw");
  }


  void dibujarMenu () {

    println(mouseX); 
    println(mouseY + "mouse X es"); 
    fill(255);
    textFont(titulo);
    textAlign(CENTER);
    textSize(100);
    text("Cuarentime", width/2, height/3);

    textFont(titulo);
    textSize(25);

    text("Para mover el personaje solo debes mover el mouse \n \n Para disparar debes apretar la tecla CONTROL", width/2, height/2);

    fill(255, 0, 0);
    textSize(35);
    text("COMENZAR", width/2, height-200);
  }

  void activadorMenu(boolean comenzar) {
    if (mousePressed) {
      if (mouseX>=407 && mouseX<=614 && mouseY >=538 && mouseY<=570) {

        comenzar= true; 
        estado="juego";
      } else {
        comenzar=false;
      }
    }
  }
}
