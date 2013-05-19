
void setup() {
  size(1200,1300);  
}

void draw() {
  background(255);
  translate(width/2, height/2);
  stroke(255,0,0);
 
  pushMatrix();
  branch(110);
  popMatrix();
  
  pushMatrix();
  translate(-30,100);
  rotate(PI);
  stroke(255,0,0);
  branch(90);
  popMatrix();
 
  noLoop();
}


void branch(float len) {
  strokeWeight(18);
  line (0, 0, 3, 2*len);
  translate(0, -len*2);

  len *= 0.66;
  
  if (len > 2) {
    pushMatrix();    
    rotate(PI/2);   
    branch(len);       
    popMatrix();     

    pushMatrix();
    rotate(-PI/5);
    branch(len);
    popMatrix();
    
  }
}


