Puntos []lineas = new Puntos[25]; //Cantidad de curvas en la pantalla
float curva; // Periodo de la oscilación (curva) variable global  
int posY = 0; // Posicion en Y en el canvas

void setup() {
  size(700, 200);
  frameRate(1);
  
  // Incicializa las coordenadas con una posición específica de cada objeto
  for (int i = 0; i < lineas.length; i++) {
    lineas[i] = new Puntos(0, posY = posY + 15); //Cada 15 pixeles se crea una curva diferente en Y
  }
}

void draw () {
  background(0); //Se pone al inicio para limpiar canvas
  noStroke();
  fill(120, 50);
  rect(0, 0, width, height);
  strokeWeight(3);
  stroke(255, 255, 0,255);
  
  
  // Ciclo que extrae cada elemento del arreglo lineas[]
  for (int i = 0; i < lineas.length; i++) {
    curva = random(1); //Se genera un perido diferente de la curva para cada objeto 
    // Pinta los puntos de cada objeto durante todo el ancho de pantalla
    for (int posX = 0; posX < width; posX = posX + 10) { //Separación entre cada punto
      point(posX, altura(posX, i)); // Pinta un punto en pantalla X inrementa de 10 en 10 y Y nos lo da la función altura
    }
  }
  
  
}
//Función que nos genera una altura para cada punto
//Parámentros de entrada: Posición en X y el elemento que se está modificando
//Parámetro de salida: Altura Y 
float altura (float x, int elemento0) {
  float angulo = x;
  int elemento = elemento0; // Recepción de los valores de entrada
  float rad = radians(angulo); //Conversión de X a radianes 
  float  alturaY = 15*sin(curva*rad) + lineas[elemento].y; //Se genera un valor de Y específico para cada objeto (elemento). Curva, define la forma de cada objeto. 
  return alturaY; //Retorna altura (es donde pinta el punto)
}