
float x, y;
float ang = 1;
float y2 = 0;
float y3 = 0, y4 = 0, y5 = 0, y6=0;

float pi = 3.14;

void setup() {
  size(700, 200);
  x= 0; 
  y = height/2;

  frameRate(60);
}

void draw() {
  noStroke();
  fill(120, 50);
  rect(0, 0, width, height);
  strokeWeight(5);
  stroke(255, 255, 0);
  ang = ang +5;


  puntos(0.05);
}

void puntos(float velX) {
  float rad = radians(ang);

  x = x+velX;
  y = 50*sin(.5*rad) + height/2;
  point(x, y);
  if (x>=width) {
    background(120);
    x = 0;
  }
}