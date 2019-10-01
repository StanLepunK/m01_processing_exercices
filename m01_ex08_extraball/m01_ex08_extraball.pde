void setup() {
	size(640,480);
	background(0);
}

float x = 100;
float y = 100;
float vitesse_x = 2.5;
float vitesse_y = 2;
float vitesse_battement  = 0.005;
void draw() {
	float rayon = 0;
	float ratio = 0;
	int min = 20;
	int max = 100;
	int range = max - min;

	ratio = abs(sin(frameCount * vitesse_battement));
	rayon = ratio * range +min;
	mouvement(rayon);
	arriere_plan();
	aspect(rayon);
	ellipse(x, y, rayon * 2, rayon * 2); 
}

void mouvement(float rayon) {
	x  = x + vitesse_x;
	y  = y + vitesse_y;
	if(x > width - rayon || x < rayon) {
		vitesse_x = vitesse_x * -1;
	}
	if(y > height - rayon || y < rayon) {
		vitesse_y = vitesse_y * -1;
	}
}

void arriere_plan() {
	noStroke();
	if(keyPressed && mousePressed) {
		background(0);
	} else if(keyPressed) {
		fill(0, 5);
		rect(0, 0, width, height);
	}
}

void aspect(float rayon) {
	stroke(0);
	strokeWeight(2);
	if(mouseX > x - rayon && mouseX < x + rayon && mouseY > y - rayon && mouseY < y + rayon) {
		if(mousePressed) {
			fill(255,0,255);
			x = mouseX;
			y = mouseY;
		} else {
			fill(255, 255, 0);
		}
	} else {
		fill(255, 0, 0);
	}
}
