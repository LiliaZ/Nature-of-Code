
import processing.opengl.*;

// number of grid points horizontal
int xCount = 20;
// number of grid points vertical
int yCount = 7;

// view rotation
int offsetX = 0, offsetY = 0, clickX = 0, clickY = 0;
float rotationX = 0, rotationY = 0, targetRotationX = 0, targetRotationY = 0, clickRotationX, clickRotationY; 


void setup() {
  size(800, 800, OPENGL);
  smooth();
}


void draw() {

  background(255);
  fill(255);
  strokeWeight(2);  

  setView();

  scale(30);

  // Draw mesh
  for (int y = 0; y < yCount; y++) {
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= xCount; x++) {

      float z = sin(x);

      vertex(x, y, z);
      vertex(x, y+1, z);
    }
    endShape();
  }

}




void mousePressed(){
  clickX = mouseX;
  clickY = mouseY;
  clickRotationX = rotationX;
  clickRotationY = rotationY;
}



void setView() {
  translate(width*0.2,height*0.2);

  if (mousePressed) {
    offsetX = mouseX-clickX;
    offsetY = mouseY-clickY;
    targetRotationX = clickRotationX + offsetX/float(width) * TWO_PI;
    targetRotationY = min(max(clickRotationY + offsetY/float(height) * TWO_PI, -HALF_PI), HALF_PI);
    rotationX += (targetRotationX-rotationX)*0.25; 
    rotationY += (targetRotationY-rotationY)*0.25;  
  }
  rotateX(-rotationY); 
  rotateY(rotationX); 
}




