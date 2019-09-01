

float time = 0;
int high = 360;
float a = 9.8;

float goalX = 200;
float goalY = 200;
float initV = 100;

void setup() {
  background(0);
  size (640, 360);
  stroke(255);
}

void draw() {
  time = 0;
  
  projectile test = new projectile(1,1,initV,generateAngle(goalX, goalY, initV));
  println(generateAngle(goalX, goalY, initV));
  stroke(45);
  ellipse(goalX, high - goalY, 50, 50);
  stroke(255);
  while(test.getYpos() > 0) {
    time = time + .001;
    test.updatePos(time, high);
  }
}

float generateAngle(float x, float y, float v) {
  return degrees(atan((v * v - sqrt(pow(v, 4) - a * (a * x * x + 2 * y * v * v ))) / (a * x)));
}

void mousePressed() {
  exit(); 
}
