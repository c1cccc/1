int r=4;
int n=20;
int[] x=new int[int(n)];
int[] y=new int[int(n)];
int[] speedX= new int[int(n)];
int[] speedY= new int[int(n)];
void setup() {
  size(600, 600);
  init();
}


void init() {
  for (int i=0; i<x.length; i++) {
    x[i]=int(random(50, 550));
    y[i]=int(random(50, 550));
    speedX[i]=int(random(-5, 5));
    speedY[i]=int(random(-5, 5));
  }
}
void draw() {
  background(0);
  for (int i = 0; i < x.length; i++) {  
    float a=-0.3*(250-x[i])*(250-y[i]);
    fill(255, a);
    noStroke();
    ellipse(x[i], y[i], r*2, r*2);
    for (int j = 0; j < x.length; j++) {
      strokeWeight(1);
      if ( j != i ) {
        float d = dist( x[i], y[i], x[j], y[j] );
        if ( d < 200 ) {
          stroke( 255, 255 - d );
          line(  x[i], y[i], x[j], y[j] );
        }
      }
    }
  }
  move();
}

void mousePressed() {
  init();
}

void move() {

  for (int i=0; i<x.length; i++) {    
    x[i]+=speedX[i];  
    y[i]+=speedY[i];

    if (x[i]>=550 || x[i]<=50) {
      speedX[i] = speedX[i]*(-1);
    }
    if (y[i]>=550 || y[i]<=50) {
      speedY[i] = speedY[i]*(-1);
    }
  }
}