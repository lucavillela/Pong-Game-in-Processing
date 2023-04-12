public class Raquete{
  
  public float cimaX, cimaY, baixoX, baixoY;
  public int grossura;
  public char teclaCima, teclaBaixo;
  
  public Raquete(float cimaX, float cimaY, float baixoX,  float baixoY, int grossura, char teclaCima, char teclaBaixo){
    this.cimaX = cimaX;
    this.cimaY = cimaY;
    this.baixoX = baixoX;
    this.baixoY = baixoY;
    this.grossura = grossura;
    this.teclaCima = teclaCima;
    this.teclaBaixo = teclaBaixo;
  }
  
  void drawRaquete(){
    stroke(#FFFFFF);
    strokeWeight(grossura);
    line(cimaX, cimaY, baixoX, baixoY);
  }
  
  void updateRaquete(){
    if(keyPressed == true && key == teclaCima){
      cimaY -= 10;
      baixoY -= 10;
    }
    else if(keyPressed == true && key == teclaBaixo){
      cimaY += 10;
      baixoY += 10;
    }
  }
}
