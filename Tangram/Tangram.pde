boolean drawGrid = false;
boolean[] displayLevels = new boolean[] {false,false,false,false};
boolean getResult = false;
Shape[] shapes;



void setup() {
  size(800,700);
  smooth();
  frameRate(10);
  shapes = new Shape[7];
  initialConditions();
}

void draw() {
  background(0,153,153);
  drawGrid(50, drawGrid);
  displayLevels(displayLevels);
  displayShapes(shapes);
  getResult(getResult);
  println(getResult);
}

void mouseDragged() {
  
  // Translate Shapes
  for(int i = 0; i < shapes.length; i++) {
    if(selection(shapes[i]) == true) {
      shapes[i].translation();
    }
  }
}

void keyPressed() {
  
  // Enable Grid
  if (key == 'g' || key == 'G') {
    drawGrid = !drawGrid;
  }
  
  // Enable Rotation of Shapes
  for(int i = 0; i < shapes.length; i++) {
    if(selection(shapes[i]) == true) {
      float angle;
      
      // Rotate Right
      if(key == 'r' || key == 'R') {
        angle = shapes[i].rotation() + PI/12;
        shapes[i].setRotation(angle);
      }
      
      // Rotate Left
      if(key == 'l' || key == 'L') {
        angle = shapes[i].rotation() - PI/12;
        shapes[i].setRotation(angle);
      }
    }
  }
  
  // Reset Tangram
  if(key == ' ') {
    displayLevels[0] = false;
    displayLevels[1] = false;
    displayLevels[2] = false;
    displayLevels[3] = false;
    getResult = false;
    initialConditions();
  }
  
  // Display Level 0
  if(key == '0') {
    displayLevels[0] = true;
    displayLevels[1] = false;
    displayLevels[2] = false;
    displayLevels[3] = false;
    getResult = true;
    initialConditions();
  }
  
  // Display Level 1 
  if(key == '1') {
    displayLevels[0] = false;
    displayLevels[1] = true;
    displayLevels[2] = false;
    displayLevels[3] = false;
    getResult = true;
    initialConditions();
  }
  
  //Display Level 2
  if(key == '2') {
    displayLevels[0] = false;
    displayLevels[1] = false;
    displayLevels[2] = true;
    displayLevels[3] = false;
    getResult = true;
    initialConditions();
  }
  
  //Display Level 3
  if(key == '3') {
    displayLevels[0] = false;
    displayLevels[1] = false;
    displayLevels[2] = false;
    displayLevels[3] = true;
    getResult = true;
    initialConditions();
  }
 
}
