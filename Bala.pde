class Bala {
  int bpx, bpy, tam;
  boolean disparar; 


  Bala () {
    disparar=false;
    tam=8;
  }

  void dibujar(int px, int py) {

    if (disparar==true) {

      bpx+=10;
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
  void dispararBala() {
    disparar=true;

  }
  void desactivarBala() {
    disparar=false;
  }
}
