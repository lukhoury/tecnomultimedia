void variables () {
  inicio = loadImage("inicio.jpg");
  tipo= loadFont("AgencyFB-Bold-48.vlw");
  titulo= loadFont("1942report-48.vlw");
  textFont(titulo, 100);

  personaje = loadImage("personaje_invertido.png");
  personajechico = loadImage("personaje_tecno.png");  //100 pixeles

  escena1 = loadImage("escena1.png");
  dialogo1 = loadImage("diagesc1.png");
  cartelcasa1= loadImage("cartel1.png");
  cartelcasa2= loadImage("cartel_casa2.png");

  escena2 = loadImage("escena2.png");
  cartel3= loadImage("cartel2.png");

  escenasuper= loadImage("escenasupermercado.png");
  dialogosuper= loadImage("texto_super.png");
  cartelsuper= loadImage("cartel_supermercado.png");
  cartelarbusto= loadImage("cartel_arbusto.png");

  fondosimple= loadImage("final_creditos.png");
  cartelinvestigar= loadImage("cartel_investigar.png");
  cartelrodear = loadImage("cartel_rodear.png");

  finalsobrevivientes= loadImage("final_sobrevivientes.png") ;
  cartelfinalsob = loadImage("cartel_sobrevivientes.png");

  cartelinfectados= loadImage("cartel_infectados_opciones.png");
  infectado=loadImage("infectados.gif");
  finalinfectados=loadImage("final_infectados.png");
  estado = "inicio";
  cartel=true;
  cartelext=true;
  cartelinv=true;

  cartelsob=true;
  cartelinf=true;
  cartellucha=true;
  px=500;
  py=200;
  py2=800;
  pos=255;
}
