class Puntos {

  float ang ;
  float y2 = 0;
  float y3 = 0, y4 = 0, y5 = 0, y6=0;
  float pi = 3.14;

  float x;
  float y;

  Puntos(float tAng) {
    x = 0;
    y = height/2;
    //ang = tAng;//
  }



  void display(float xVel,float trn) {

    noStroke();
    fill(120, 50);
    rect(0, 0, width, height);
    strokeWeight(5);
    stroke(trn, 255, 0,255);
    ang = ang +5;


    x = x+xVel;
    float rad = radians(ang);
    y = 50*sin(.5*rad) + height/2;
    point(x, y);
    println(y);
    if (x>=width) {
      background(120);
      x = 0;
    }
  }
}//EOC