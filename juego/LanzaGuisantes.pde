public class LanzaGuisantes{
  PImage imgLanzaGuisantes;
  int posX=0,posY=0;
  int vida=0;
  
  public LanzaGuisantes(int posicionX, int posicionY){
    imgLanzaGuisantes = loadImage("img/PlantaDisparadora.png");
    image(imgLanzaGuisantes, posicionX, posicionY);
  }
  
  
}
