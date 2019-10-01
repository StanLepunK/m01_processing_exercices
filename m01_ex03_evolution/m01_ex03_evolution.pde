void setup() {
  size(640,480);
}

void draw() {
  int min = 20;
  int max = 100;
  int range = max - min;
  float taille = 0;
  float ratio = 0;
  float vitesse = 0.03;
  
  ratio = abs(sin(frameCount * vitesse));
  taille = ratio * range + min;
  background(0);
  noStroke();
  fill(255);
  ellipse(mouseX,mouseY,taille,taille);
}
