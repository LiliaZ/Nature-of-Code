

void setup() {
  size(1000,1000);  
}

void draw() {
  background(255);
  translate(width/2, height/2);
  stroke(255,0,0);
  branch(60);
 
 
  noLoop();
}



void branch(float len) {
  strokeWeight(2);
      
  line (0, 0, 2, -len);
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


