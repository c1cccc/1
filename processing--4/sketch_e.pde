import controlP5.*;
ControlP5 cp5;
float x=0;


void setup() {
  size(700, 600);
  cp5 =new ControlP5(this);
  cp5.addSlider("x", 0, 100, 0, 90, 73, 100, 20);
}

void draw() {
  background(255);

  float d= map(x, 0, 100, PI, 0);
  noStroke();
  fill(200);
  ellipse(350, 270, 245, 245);
  fill(255);
  ellipse(350, 270, 200, 200);
  rect(350-0.5*245, 270, 350+0.5*245, 270+245/2);
  for (int i=0; i<=10; i++) {
    stroke(0, 70);
    strokeWeight(1);
    line(350, 270, 350+245/2*cos(-i*PI/10), 270+245/2*sin(-i*PI/10));
  }
  fill(100, 100, 255);
  noStroke();
  ellipse(350, 270, 20, 20);  
  stroke(100, 100, 255);
  strokeWeight(5);
  line(350, 270, 350+245/2*cos(-d), 270+245/2*sin(-d));
  textSize(40);
  fill(2.55*x, 0, 255/x-1);
  textAlign(CENTER, CENTER);
  text(int(x)+"%", 350, 73);

  stroke(2.55*x, 0, 255/x-1);
  strokeWeight(1.5);
  noFill();
  for (int i = 0; i<360; i=i+8) {
    float r = x/2+x/20*sin(millis()/200.0+45*i);
    float x = 350 + r*sin(radians(i));
    float y = 400 + r*cos(radians(i));
    line(width/2, 400, x, y);
  }
}