abstract class Shape {
  float _rotation;
  PVector _position;
  color _hue;
  
  // Default Constructor for Shapes
  Shape() {
    this(new PVector(random(0, 700), random(0, 700)),
         random(0, TWO_PI),
         color(random(0, 255), random(0, 255), random(0, 255)));
  }

  // Specified Constructor for Quadriletral Shapes
  Shape(PVector position, float rotation, color hue) {
    setPosition(position);
    setRotation(rotation);
    setHue(hue);
  }

  // Display of Shapes in Screen
  void draw() {
    push();
    fill(hue());
    translate(position().x, position().y);
    rotate(rotation());
    aspect();
    pop();
  }

  // Declaration of Aspect for each Shape
  abstract void aspect();

  // Translate Shape to Mouse Position
  void translation() {
      setPosition(new PVector(mouseX, mouseY));
  }

  // Return and Set Rotation for Shapes
  
  float rotation() {
    return _rotation;
  }

  void setRotation(float rotation) {
    _rotation = rotation;
  }
  
  // Return and Set Position for Shapes

  PVector position() {
    return _position;
  }

  void setPosition(PVector position) {
    _position = position;
  }
  
  // Return and Set Color for Shapes

  color hue() {
    return _hue;
  }

  void setHue(color hue) {
    _hue = hue;
  }
}
