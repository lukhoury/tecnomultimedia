void variables () {

  tipo= loadFont("AgencyFB-Bold-48.vlw");
  titulo= loadFont("1942report-48.vlw");
  textFont(titulo, 100);

 // personaje = loadImage("personaje_invertido.png");
 // personajechico = loadImage("personaje_tecno.png");  //100 pixeles


  dialogo1 = loadImage("diagesc1.png");
  infectado= loadImage("infectados.png");

  estado = "inicio";
  cartel=true;
  cartelext=true;
  cartelinv=false;
  cartelsob=true;
  cartelinf=true;
  cartellucha=true;
  cartelrod=false;
  px=500;
  py=200;
  py2=800;
  pos=255;
  mov=0;

  for (int i=0; i<11; i++) {

    carteles[i] = loadImage( i + ".png");
    println( i + ".png");
  }
  for (int j=0; j<6; j++) {
    fondos[j] = loadImage( j+20 + ".png");
    println( j+20 + ".png");
  }
  
  for (int p=0; p<4; p++) {
    
   jugador[p] = loadImage (p+30 + ".png"); 
   println (p+30+ ".png");
    
  }
}

boolean boton (int px1, int px2, int py1, int py2) {
  if(mouseX >=px1 && mouseX<= px2 && mouseY>=py1 && mouseY<=py2) {
  return true;
} return false;
}
