void setup(){
  size(800,800);
}

void draw(){
    background(255);
    
    noStroke();
    fill(200,217,217);
    triangle(70,70,351,77,77,351);
    
    noStroke();
    fill(255);
    ellipse(70,70,60,60);  
    
    noStroke();
    fill(255);
    ellipse(230,115,35,35);
        
    noStroke();
    fill(200,220,220);
    ellipse(230,115,15,15);  
    
    for(int i=0;i<8;i++){
    myForm(273,273);
    } 
}

void myForm(float rectX, float rectY){
    float x=rectX;
    float y=rectY;
 
    for(int i = 0; i<3;i++){
      noStroke();
      fill(200,217,217,35);
      triangle(x+86*i,y+86*i,x+86*i+145,y+86*i-120,x+86*i-120,y+86*i+145);
    }

for(int i = 0; i<50;i++){
    stroke(200,217,217,35);
    strokeWeight(3);
    noFill();
    ellipse(215+7*i,215+7*i,21,21);
}
   
    noStroke();
    fill(200,217,217);
    ellipse(640,640,320,320);
    
    noStroke();
    fill(255);
    ellipse(740,740,440,440);
    
    stroke(200,220,220,30);
    strokeWeight(10);
    noFill();
    beginShape();
    vertex(340, 80);
    bezierVertex(400,100,600,120,620,500); 
    endShape();
   
    stroke(200,220,220,30);
    strokeWeight(10);
    noFill();
    beginShape();
    vertex(80,340);
    bezierVertex(100,400,120,600,500,620); 
    endShape();

}