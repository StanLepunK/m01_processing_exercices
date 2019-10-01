void setup() {
  size(640,480);
}

void draw() {
  int marge = 50;

  background(0);
  noStroke();
  if(mouseX > marge && mouseX < width - marge && mouseY > marge && mouseY < height - marge) {
    fill(255,0,0);
  } else {
    fill(255,255,0);
  }
  rect(marge,marge, width - (marge * 2),  height - (marge * 2));
}
