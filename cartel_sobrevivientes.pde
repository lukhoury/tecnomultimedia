void cartel_sobrevivientes () {

  if (estado.equals("sobrevivientes") && cartelsob==true) {
    image(cartelfinalsob, 100, 50, 800, 500);
    noLoop();
    cartelsob=false;
  }
}
