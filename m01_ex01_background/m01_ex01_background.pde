void setup() {
  size(640,480);
}

void draw() {
  if(mousePressed) {
    background(0);
  }
  ellipse(mouseX,mouseY,20,20);
}
