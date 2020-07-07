void cartel_infectados () {
  
  if(estado.equals("infectados") && cartelinf==true) {
    image(cartelinfectados, 100, 50, 800, 500); 
    noLoop();
    cartelinf=false;
  }
  
}
