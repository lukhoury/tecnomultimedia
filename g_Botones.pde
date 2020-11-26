class Boton {

  Boton () {
  }

  // -----------------------------------------------------------------------------------------------------------------
  boolean botones (float bx1, float bx2, float by1, float by2) {
    if (mouseX >=bx1 && mouseX<= bx2 && mouseY>=by1 && mouseY<=by2) {
      return true;
    } 
    return false;
  }
}
