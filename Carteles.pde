// ESCENA CASA

void mostrar_cartel1 () {  // CARTEL INICIAL
  if (estado.equals("escena1") && cartel==true ) {
    image(carteles[0], 100, 50, 800, 500);
  }
}

void cartel_casa2() {  // APARECE CARTEL TV  
  if (boton(0,102,239,416) & estado.equals("escena1")) {
    cartel22=true;
  }
}

void mostrar_cartel2() {  // TV
  if (cartel22==true && estado.equals("escena1")) {
    image(carteles[2], 100, 50, 800, 500);
  }
}

// ESCENA EXTERIOR DE LA CASA 

void cartel_exterior() {  // CARTEL INICIAL DE LA ESCENA EXTERIOR

  if (estado.equals("escena2") && cartelext==true) {
    image(carteles[3], 100, 50, 800, 500);
  }
}


// ESCENA SUPERMERCADO

void cartel_super(){   // CARTEL ELECCIÓN SUPERMERCADO E/ RODEAR E INVESTIGAR
  if (cartel_super ==true && estado.equals("escenasuper")){
    image(carteles[5], 100, 50, 800, 500);
  }
}

void cartel_investigar() {
  if (cartelinv==true && estado.equals("investigando") ){
    image(carteles[6], 100, 50, 800, 500);
    noLoop();
    cartelinv=false;
  }
}

void cartel_rodear(){
  if (cartelrod==true && estado.equals("rodear")){
    image(carteles[7],100,50,800,500);
    cartelrod=false;
noLoop();
  }
}


//ESCENA FINAL


void cartel_sobrevivientes () {  // SE ELIGIÓ LA OPCIÓN DE SOBREVIVIENTES

  if (estado.equals("sobrevivientes") && cartelsob==true) {
    image(carteles[8], 100, 50, 800, 500);
    noLoop();
    cartelsob=false;
  }
}

void cartel_infectados () {  // SE ELIGIÓ LA OPCIÓN DE INFECTADOS
  
  if(estado.equals("infectados") && cartelinf==true) {
    image(carteles[9], 100, 50, 800, 500); 
    noLoop();
    cartelinf=false;
  }
  
   if (estado.equals("infectados") ) {  // LOS INFECTADOS
     
       for(int i=0; i<cant; i++) {
         image(infectado,400+i*60,600,150,150);
         
       }
   
   }
  
}


void cartel_lucha() {  // SE ELIGIÓ LUCHAR CONTRA LOS INFECTADOS- ACÁ VA A SER EL VIDEOJUEGO
  
  
  if(estado.equals("luchar") && cartellucha==true) {
    
    cartellucha=false;
    noLoop();
    image(carteles[10], 100, 50, 800, 500);
    
    
  }
   if (estado.equals("luchar") ) {
     
       for(int i=0; i<cant; i++) {
         image(infectado,400+i*60,600,150,150);
         
       }
   
   }
}
