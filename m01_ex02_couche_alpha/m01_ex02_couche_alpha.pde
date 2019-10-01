void setup() {
  size(640,480);
}

void draw() {
  noStroke();
  fill(255);
  ellipse(mouseX,mouseY,20,20);
  if(mousePressed) {
    background(0);
  } else {
    fill(0,10);
    rect(0,0,width,height);
  }
}
