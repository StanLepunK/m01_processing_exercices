void setup() {
  size(640,480);
}

float x = 0;
float y = 0;

void draw() {
  int taille = 20;
  float vitesse_x = 2.4;
  float vitesse_y = 0.3;
  x = x + vitesse_x;
  y = y + vitesse_y;
  
  if(x > width) {
    x = 0;
  }
  if(y > height) {
    y = 0;
  }
  background(0);
  noStroke();
  fill(0,0,255);
  ellipse(x,y,taille,taille);
}
