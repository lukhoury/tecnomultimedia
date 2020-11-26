class Bala {
  float bpx, bpy, tam;
  boolean disparar; 


  Bala () {
    disparar=false;
    tam=8;
    
    bpx= x(0);
    bpy= y(0);
  }
  // -----------------------------------------------------------------------------------------------------------------
  void dibujar(float px, float py) {

    if (disparar==true) {

      bpx+=30;
    } else {
      bpy= py;
      bpx= px;
    } 
    fill (234, 154, 2);
    ellipse(bpx, bpy, tam, tam);

    if (bpx>1024) {
      bpx=px;
      disparar=false;
    }
  }
  // -----------------------------------------------------------------------------------------------------------------
  void dispararBala() {
    disparar=true;
  }
  // -----------------------------------------------------------------------------------------------------------------
  void desactivarBala() {
    disparar=false;
  }
  
  
  float x(float valor) {
    return round(map(valor, 0, 1024, 0, width));
  }

  float y(float valor) {
    return round(map(valor, 0, 768, 0, height));
  }
}
