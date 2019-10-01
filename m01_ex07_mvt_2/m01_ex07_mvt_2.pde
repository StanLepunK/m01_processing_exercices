void setup() {
  size(640,480);
}

float x = 100;
float y = 100;
float vitesse_x = 2.5;
float vitesse_y = 2;
void draw() {
   int rayon = 25;
   
   x  = x + vitesse_x;
   y  = y + vitesse_y;
   if(x > width - rayon || x < rayon) {
     vitesse_x = vitesse_x * -1;
   }
   if(y > height - rayon || y < rayon) {
     vitesse_y = vitesse_y * -1;
   }
   background(0);   
   fill(255,255,0);
   ellipse(x, y, rayon * 2, rayon * 2); 
}
