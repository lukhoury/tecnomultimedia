void cartel_rodear(){
  if (cartelrod==true && estado.equals("rodear")){
    image(cartelrodear,100,50,800,500);
    cartelrod=false;
noLoop();
  }
}
