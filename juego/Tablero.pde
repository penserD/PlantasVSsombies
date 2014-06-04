public class Tablero{
 int posX=0, posY=0;
int ancho=30, largo30;
PImage img;
public Tablero(int x, int y){
  posX=x;
  posY=y;
}

public void pintarTablero(){
    
    img = loadImage("img/Pasto.png");
    image(img, posX, posY);
}

public int getX(){
 return posX; 
}
public int getY(){
  return posY; 
}
  
}
