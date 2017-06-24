ArrayList myBall = new ArrayList();

void setup() {
  size(800, 800);
  init();
}

int ind=0;
void mousePressed() { 
  Ball myLittleBall= new Ball(random(10, 30), random(70, 370), random(2*PI), random(255), random(255), random(100, 200));
  myBall.add(myLittleBall);
  ind++;
}

void draw() {
  background(255);
  noStroke();
  fill(255, 55, 55, 200);
  ellipse(400, 400, 90, 90);
  for (int i=0; i< myBall.size(); i++) {    
    Ball myLoclBall = (Ball)myBall.get(i);
    myLoclBall.behavior();
    textAlign(CENTER, CENTER);
    textSize(70);
    text(ind, 700, 600);
  }
}
void keyPressed() {
  if (key =='r') {
    init();
  }
}

void init() {
  myBall = new ArrayList();
}