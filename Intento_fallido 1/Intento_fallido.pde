Puntos []lineas = new Puntos[4];

void setup() {
  size(700, 200);
  frameRate(60);
  for (int i = 0; i < lineas.length; i++) {
    lineas[i] = new Puntos(i+300);
  }
}

void draw () {
  for (int i = 0; i < lineas.length; i++) {
    lineas[i].display(random(1),random(100,255));
  }
}