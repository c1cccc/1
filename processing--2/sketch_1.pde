int r=4;

int[] x=new int[20];
int[] y=new int[20];
boolean overlap;

void setup() {
  size(600, 600);
  init();
}


void init() {
  for (int i=0; i<x.length; i++) {
    x[i]=int(random(50, 550));
    y[i]=int(random(50, 550));
  }
}
void draw() {
  background(0);
  for (int i=0; i<x.length; i++) {
    float myDist=dist(mouseX, mouseY, x[i], y[i]);
    if (myDist<=4*r) {
      fill(255);
    } else {
      overlap=false;
      noStroke();
      fill(255,130);
    }
    ellipse(x[i], y[i], r*2, r*2);
  }
    for (int i = 0; i < x.length; i++) {  
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
  move();
}

void keyPressed(){
    if(key =='r'){
      init();
    }
}

void move(){
  for(int i=0;i<x.length;i++){
  float myDist=dist(mouseX, mouseY, x[i], y[i]);
    if (myDist<=5*r) {
      if(mousePressed){
       x[i]=mouseX;
       y[i]=mouseY;
      }
    }
  }
}