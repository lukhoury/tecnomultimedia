
void keyPressed() {

    if (key == CODED) { 
      
     if(keyCode==RIGHT ) {
      personaje = loadImage("personaje_invertido.png");
      px +=3;  
     }
     
     if (keyCode==LEFT) {
       px -=3;
       personaje = loadImage("personaje_tecno_200.png");
     }
     
     if(keyCode==UP && py>155) {
      personaje = loadImage("personaje_tecno_200.png"); 
      py -=3; 
     }
     
     if(keyCode==DOWN ) {
      personaje = loadImage("personaje_invertido.png"); 
      py +=3; 
     }
    }
}
