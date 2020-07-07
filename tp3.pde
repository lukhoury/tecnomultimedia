PImage personaje, inicio, personajechico, personajeinvertido, escena1inicio, dialogo1, escena1, escena2, escenasuper, dialogosuper, cartelcasa1, cartelcasa2, cartel3, cartelsuper, cartelarbusto, fondosimple, cartelinvestigar, finalsobrevivientes, cartelfinalsob, cartelrodear, cartelinfectados, infectado, finalinfectados;
PFont titulo, tipo;
float pos, trans;
boolean  salir, cartel_super, cartel, cartel22, esc1, cartelsob, cartelinv, cartelsup, cartelarb, cartelext, cartelrod, comenzar, cartelinf, cartellucha, cred;
int px, py, puertax, puertay, tam, bot, py2;
String estado; 
void setup () {
  size (1024, 768);
  variables();
}

void draw () {

  background(0); 
  println(mouseX);
  println(mouseY);
  println("estado es : " + estado); 



  if (estado.equals("inicio") ) { 

    fill(255, pos);
    text("CoronaTime", 200, 400);
    noFill();
    tint(0, 179, 255, pos);
    pos-=1;
    map (pos, 255, 200, 0, 13);
    noTint();
  }

  if (frameCount>300 && estado.equals("inicio")) {  // 
    estado = "presentacion";
  }

  //INTRO A LA HISTORIA


  if (estado.equals("presentacion") ) { 
    pos=0;
    pos+=0.5;
    textFont(titulo, 25);
    fill(255); 
    text("27 de junio del 2021", 200, 70);
    textAlign(CENTER);
    textSize(20);
    text("Mi nombre es Nachito, hace tiempo la pandemia ha terminado. Han quedado \n \n solo unos pocos sobrevivientes  de la gran masacre y rumores sobre  \n \n infectados vivos que ya no son lo mismo que antes. \n \n \n TENGO QUE SOBREVIVIR.", 500, 360);
    fill(255, 0, 0);
    textFont(tipo, 20);
    text("COMENZAR", 500, 643);
    text("PARA INTERACTUAR PODRÁS USAR EL MOUSE, Y TECLAS COMO LAS FLECHAS Y EL SPACE", 500, 700);
  }


  if (comenzar==true ) {  
    estado = "escena1";
    esc1=true;
  }

  // PRIMER ESCENA- CASA

  if (estado.equals("escena1") && esc1==true) {  
    image(escena1, 0, 0, 1024, 768);
    image(personaje, px, py, 200, 250);
    image(dialogo1, 0, 0, 1024, 768);
    mostrar_cartel1() ;// mostrar cartel 1
    mostrar_cartel2(); // mostrar cartel recursos encontrados
  } 

  if (estado.equals("escena2")) {
    image(escena2, 0, 0, 1024, 768);
    image(personaje, px, py, 200, 250);
    cartel_exterior(); //mostrar cartel exterior
  }
  if (estado.equals("escenaarbusto") ) {

    image(escena2, 0, 0, 1024, 768);
  }

  // TERCERA ESCENA- EXTERIOR SUPERMERCADO


  if (estado.equals("escenasuper") ) {  //ESCENA SUPER

    image(escenasuper, 0, 0, 1024, 768); 
    image(dialogosuper, 0, 0, 1024, 768);
    image(personaje, 433, 463);
    cartel_super();
  }
  // CUARTA ESCENA- SUPERMERCADO, INVESTIGAR


  if (estado.equals("investigando") ) {
    image(fondosimple, 0, 0, 1024, 768);
    cartel_investigar ();
  }
  //RODEANDO

  if (estado.equals("rodear")) {
    image(fondosimple, 0, 0, 1024, 768);
    cartel_rodear();
  }

  //SOBREVIVIENTES

  if (estado.equals("sobrevivientes") ) {

    image(finalsobrevivientes, 0, 0, 1024, 768);
    cartel_sobrevivientes();
  }

  //INFECTADOS
  if (estado.equals("infectados") ) {

    image(fondosimple, 0, 0, 1024, 768);
    cartel_infectados();
  }

  if (estado.equals("luchar")) {
    image(fondosimple, 0, 0, 1024, 768);
    cartel_lucha();
  }

  // CREDITOS

  if (estado.equals("creditos") ) {
    image(fondosimple, 0, 0, 1024, 768);
    creditos();
  }
}
void mousePressed() {
  comenzar_boton();
  botones_false(); //poner en false los botones de cartel
  cartel_casa2(); //encontro recursos
  sale_puerta();//salir
  escena_super();
  opciones();
}
