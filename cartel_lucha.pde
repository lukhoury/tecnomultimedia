void cartel_lucha() {
  
  
  if(estado.equals("luchar") && cartellucha==true) {
    
    cartellucha=false;
    noLoop();
    image(finalinfectados, 100, 50, 800, 500);
    
    
  }
  
}
