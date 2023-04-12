
public class Bola{
  
  public float posX, posY, velX, velY;
  public int raio;

  public PVector pos, vel;

  public Bola(float posX, float posY, float velX, float velY, int raio){
    this.posX = posX;
    this.posY = posY;
    this.velX = velX;
    this.velY = velY;
    this.raio = raio;
  }
  
  void updateBola(Raquete r, Raquete r2){
    vel = new PVector(velX, velY);
    
    posX += vel.x;
    posY += vel.y;
    
    pos = new PVector(posX, posY);
   
    if(posY >= height){
      velY = (velY * -1);
    }
    else if(posY <= 0){
      velY = (velY * -1);
    }
    else if(posX == r.cimaX && posY < r.baixoY && posY > r.cimaY){
      velX = (velX * -1);
    }
    else if(posX == r2.cimaX && posY < r2.baixoY && posY > r2.cimaY){
      velX = (velX * -1);
    }
  }

  void drawBola(){
    fill(#FFFFFF);
    noStroke();
    ellipse(posX, posY, raio, raio);
  }

}
