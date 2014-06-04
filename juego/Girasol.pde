public class Girasol{
  PImage imgGirasol;
  int posX=0,posY=0;
  int vida=0;
  
  public Girasol(int posicionX, int posicionY){
    imgGirasol = loadImage("img/girasol.gif");
    image(imgGirasol, posicionX, posicionY);
  }
  
  
}
