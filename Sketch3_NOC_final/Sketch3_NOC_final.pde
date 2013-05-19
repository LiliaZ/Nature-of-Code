

void setup() {
  size(1300,1300);  
}

void draw() {
  background(255);
  translate(width/2, height/2);
  stroke(255,0,0);
  
  pushMatrix();
  branch(75);
  popMatrix();
  
  pushMatrix();
  translate(0,0);
  rotate(PI);
  stroke(255,0,0);
  branch(75);
  popMatrix();
 
  noLoop();
}


void branch(float len) {
  strokeWeight(10);
  line (0, 0, 2, -len*10);
  translate(0, -len*3);

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


