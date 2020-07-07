void cartel_investigar() {
  if (cartelinv==true && estado.equals("investigando") ){
    image(cartelinvestigar, 100, 50, 800, 500);
    noLoop();
    cartelinv=false;
  }
}
