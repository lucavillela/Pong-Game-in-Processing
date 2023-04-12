public class Jogo{
  
  public int pontuacaoA = 0, pontuacaoC = 0;
  
  public String a, c;
  
  
  public Jogo(String a, String c){
    this.a = a;
    this.c = c;
  }
  
  void newJogo(Bola b, Raquete r, Raquete r2, String a, String c){
     
    stroke(#FFFFFF);
    strokeWeight(2);
    line(width/2, 0, width/2, height);
    
    textAlign(CENTER);
    textSize(50);
    text(a + ": " + pontuacaoA, 350, 120);
    
    textAlign(CENTER);
    textSize(50);
    text(c + ": " + pontuacaoC, 1050, 120);
    
    if(b.posX > width + 50){
      b.posX = width/2;
      b.posY = height/2;
      r.cimaY = 500;
      r.baixoY = 600;
      r2.cimaY = 500;
      r2.baixoY = 600;
      pontuacaoA++;
      delay(2000);
    }
    
    if(b.posX < -50){
      b.posX = width/2;
      b.posY = height/2;
      pontuacaoC++;
      delay(2000);
    }
    
    if(pontuacaoA > 4){
      textAlign(CENTER);
      textSize(50);
      text(a + "Ganhou!", width/2, height/2);
      pontuacaoA = 0;
      pontuacaoC = 0;
    }
    
    if(pontuacaoC > 4){
      textAlign(CENTER);
      textSize(50);
      text(c + "Ganhou!", width/2, height/2);
      pontuacaoA = 0;
      pontuacaoC = 0;
    }
  }


}
