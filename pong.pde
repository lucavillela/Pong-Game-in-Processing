
 Bola b;
 Raquete r;
 Raquete r2;
 Jogo j;
 float inicioY = random(-5.0, 5.0);
 int inicioX = 10*randNew();
 public String a = "Luca", c = "Djenga";
 
 
void setup(){
 size(1400, 900);
 b = new Bola(width/2, height/2, inicioX, inicioY, 20);
 r = new Raquete(1300, 500, 1300, 600, 10, 'o', 'l');
 r2 = new Raquete(100, 500, 100, 600, 10, 'w', 's');
 j = new Jogo(a, c);
 delay(2000);
}

void draw(){
  background(#000000);
  j.newJogo(b, r, r2, a, c);
  b.updateBola(r, r2);
  b.drawBola();
  r.drawRaquete();
  r.updateRaquete();
  r2.drawRaquete();
  r2.updateRaquete();
}

int randNew(){
  int i = int(random(2, 5));
  print(i);
  if(i % 2 == 0){
    return -1;
  }
  else return 1;
}
