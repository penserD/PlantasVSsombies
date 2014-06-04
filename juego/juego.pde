import ddf.minim.*;
hilo thread1;
Minim minim;
AudioPlayer song;
 PImage imgBala,imgInicio, imgPlantaDisparadora,imgEscenario1;
 boolean booDisparar=false, booDisparo2=false; 
 boolean booInicio=false, corriendo=false;
 int a=0,a2=0, posicionX=5 ,posicionY=100, caso=0;
 LanzaGuisantes plantaGuisantes;
void setup() {
  size(900,680);
  
  // sonido
  minim = new Minim(this);
  song = minim.loadFile("01 - a cada rato.mp3");

//imagenes
  //imgBala = loadImage("img/Bala.png");
  imgInicio = loadImage("img/InicioJuego.PNG");
  imgEscenario1 = loadImage("img/Escenario1.jpg");
  
 
}
 
void draw() {
  background(255);
  
  if(!booInicio){
    image(imgInicio, 0, 0);
    fill(0,255,0);
    rect(50,50,80,30);
    
  }else{
    
    
    fill(0);
    image(imgEscenario1, 150, 150);
    
     //Arrastrar plantas
    plantaGuisantes = new LanzaGuisantes(posicionX,posicionY);
    if(booDisparar){
      a=thread1.getposBalaX();
    }

    if(corriendo && a>1200){
      print("aqui llegaste");
      thread1.quit();
      thread1 = new hilo(200,"a");
      thread1.start();
    }
  }
    

}

void mouseClicked(){
 if(mouseX>5 && mouseX<85 && mouseY>5 && mouseY<40){
  print("click");
   thread1 = new hilo(200,"a");
  thread1.start();
  corriendo=thread1.getRunning();
  booDisparar=true;
  song.play();
  
 }

  //validar entrada al juego
 if(mouseX>50 && mouseX<130 && mouseY>50 && mouseY<80){
  print("clickEntrar");
  booInicio=true;
 }
 if(mouseX>5 && mouseX<65 && mouseY>100 && mouseY<161){
        caso=1;
        mouseDragged();
  }
}

void mouseReleased(){
     switch(caso){
     case 1:{
          print("Soltaste Planta disparadora");
          thread1 = new hilo(200,"a");
          thread1.start();
          corriendo=thread1.getRunning();
          booDisparar=true;
          plantaGuisantes = new LanzaGuisantes(posicionX,posicionY);
          song.play(); 
     }
     break;
     
   }
}
void mouseDragged(){
  switch(caso){
     case 1:{
         posicionX=mouseX;
         posicionY=mouseY;
          plantaGuisantes = new LanzaGuisantes(posicionX,posicionY);
     }
     break;
     
   }
}

