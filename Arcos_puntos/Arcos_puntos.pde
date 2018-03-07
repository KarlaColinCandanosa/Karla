size(1024,720,P3D);
background(0);
strokeWeight(5);
smooth();

float radius = 100;
int centX = 250;
int centY = 150;


stroke(20, 50, 70);
float x= 0, y = height/2;
float y2 = 0;
float y3 = 0, y4 = 0, y5 = 0, y6=0;

float pi = 3.14;

for (float ang = 0; ang <= 1000; ang += 5) {    
  float rad = radians(ang);   
  
  x = x + 8; // Separacion entre puntos
  y = 50*sin(.5*rad) + height/2;
  y2 = 100*sin(.5*rad + pi/2) + height/2-150;
  y3 = 150*cos(.5*rad + pi/2) + height/2+200;
  y4 = 100*sin(.8*rad) + height/2+250;
  y5 = 150*sin(.5*rad + pi) + height/2;
  y6 = 50*cos(.5*rad) + height/2-200;
  
  strokeWeight(5);
  stroke (255,255, 0); 
  point(x,y);
  
  strokeWeight(5);
  stroke (10,47,250); 
  point(x, y2);
  
  strokeWeight(5);
  stroke (10,250,192); 
  point(x, y3);
  
  strokeWeight(5);
  stroke (185,10,250); 
  point(x, y4);
  
  //strokeWeight(5);
  //stroke (149,250,10); 
  //point(x, y5);
  
  strokeWeight(5);
  stroke (255,10,10); 
  point(x, y6);
  
  //for (float ang = 0; ang <= 1000; ang += 5) {
  //  y5 = 10*sin(rad/4 + pi) + height/2;
  //}
      
    
}