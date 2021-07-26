
void initialConditions() {
  
  // Specify Init for all Shapes
  shapes[0] = new Triangle(new PVector(-75,-150), new PVector(-75,150), new PVector(75,0));
  shapes[1] = new Triangle(new PVector(-150,-75), new PVector(150,-75), new PVector(0,75));
  shapes[2] = new Triangle(new PVector(-50,0), new PVector(25,-75), new PVector(25,75));
  shapes[3] = new Triangle(new PVector(-75,25), new PVector(0,-50), new PVector(75,25));
  shapes[4] = new Triangle(new PVector(-100,50), new PVector(50,-100), new PVector(50,50));
  shapes[5] = new Quad(new PVector(-75,0), new PVector(0,-75), new PVector(75,0), new PVector(0,75));
  shapes[6] = new Quad(new PVector(-112.5,37.5), new PVector(-37.5,-37.5), new PVector(112.5,-37.5), new PVector(37.5,37.5));
  
  shapes[0].setPosition(new PVector(125, 350));
  shapes[0].setRotation(0);
  shapes[0].setHue(color(255, 128, 17));
  
  shapes[1].setPosition(new PVector(725, 75));
  shapes[1].setRotation(radians(225));
  shapes[1].setHue(color(0, 204, 0));
  
  shapes[2].setPosition(new PVector(75, 50));
  shapes[2].setRotation(radians(45));
  shapes[2].setHue(color(102, 0, 204));
  
  shapes[3].setPosition(new PVector(412.5, 625));
  shapes[3].setRotation(radians(135));
  shapes[3].setHue(color(204, 0, 102));
  
  shapes[4].setPosition(new PVector(700, 600));
  shapes[4].setRotation(0);
  shapes[4].setHue(color(204, 0, 0));
  
  shapes[5].setPosition(new PVector(100,600));
  shapes[5].setRotation(radians(45));
  shapes[5].setHue(color(234, 234, 0));
  
  shapes[6].setPosition(new PVector(415,62.5));
  shapes[6].setRotation(0);
  shapes[6].setHue(color(0, 102, 204));
}

// Select a Shape
boolean selection(Shape shape) {
  if( get(mouseX,mouseY) == shape._hue) { 
  return true;
  } else {
  return false;
  }
}
  
// Draw Grid
void drawGrid(float scale, boolean draw) {
  if(draw) {
    push();
    strokeWeight(1);
    int i;
    for (i=0; i<=width/scale; i++) {
      stroke(0, 0, 0, 20);
      line(i*scale, 0, i*scale, height);
    }
    for (i=0; i<=height/scale; i++) {
      stroke(0, 0, 0, 20);
      line(0, i*scale, width, i*scale);
    }
    pop();
  }
}

// Display Shapes 
void displayShapes(Shape[] shapes) {
  int j = 6;
  for (int i=0; i<shapes.length; i++) {
    shapes[i].draw();
    if(selection(shapes[i])){
      j = i;
    }
    shapes[j].draw();
  }
}

//Create Level 0
void levelZero() {
  color hue = color(128,128,128);
  push();
  stroke(hue);
  fill(hue);
  rect(250,200,300,300);
  pop();
}

// Create Level 1
void levelOne() {
  color hue = color(128,128,128);
  push();
  stroke(hue);
  fill(hue);
  rect(250,350,300,150);
  triangle(200,350,350,200,500,350);
  quad(500,350,390,240,500,240,610,350);
  quad(390,240,500,240,500,135,395,135);
  pop();
}

// Create Level 2
void levelTwo() {
  color hue = color(128,128,128);
  push();
  stroke(hue);
  fill(hue);
  triangle(700,350,625,275,625,425);
  quad(625,275,625,425,175,425,325,275);
  quad(325,275,250,200,100,200,250,350);
  quad(175,425,325,425,250,500,100,500);
  pop();
}

// Create Level 3
void levelThree() {
  color hue = color(128,128,128);
  push();
  stroke(hue);
  fill(hue);
  triangle(150,200,300,50,300,200);
  quad(300,100,375,175,375,325,300,250);
  quad(300,250,450,400,450,550,300,700);
  triangle(450,400,600,550,450,700);
  pop();
}

// Display Levels
void displayLevels(boolean[] displayLevels) {
    if(displayLevels[0]) {
      levelZero();
    }
    else if(displayLevels[1]) {
      levelOne();
    }
    else if(displayLevels[2]) {
      levelTwo();
    }
    else if(displayLevels[3]) {
      levelThree();
    }
}

// Display Result
void getResult(boolean getResult) {
  int pixelCounter = 0;
  color hue = color(128,128,128); 
  if(getResult == true){
    for(int i=0; i<= width; i++){
      for(int j=0; j<= height; j++){
        if(hue == get(i,j)) {
          pixelCounter += 1;
        }
      }
    }
    if(pixelCounter < 500) {
      push();
      stroke(0,255,128);
      fill(0,255,128);
      triangle(250,400,350,550,350,475);
      triangle(350,550,350,475,600,150);
      pop();
      pixelCounter = 0;
    }
  }
}

  
   
   
