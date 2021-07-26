class Triangle extends Shape {
  PVector _coordenateA;
  PVector _coordenateB;
  PVector _coordenateC;
  
  // Default Constructor for Triangular Shapes
  Triangle() {
    this(new PVector(75,50), new PVector(100,100),new PVector(50,100));
  }
  
  // Specified Constructor for Quadriletral Shapes
  Triangle(PVector coordenateA, PVector coordenateB, PVector coordenateC) {
    setTriangle(coordenateA, coordenateB, coordenateC);
  }
  
  // Detail Aspect for Triangular Display
  @Override
  void aspect() {
    triangle(coordenateA().x, coordenateA().y, coordenateB().x, coordenateB().y, coordenateC().x, coordenateC().y);
  }
  
  // Return each Coordenate from the Triangular Shape
  
  public PVector coordenateA() {
    return _coordenateA;
  }
  
  public PVector coordenateB() {
    return _coordenateB;
  }
  
  public PVector coordenateC() {
    return _coordenateC;
  }
  
  // Set Coordenates for Triangular Shapes
  public void setTriangle(PVector coordenateA, PVector coordenateB, PVector coordenateC) {
    _coordenateA = coordenateA;
    _coordenateB = coordenateB;
    _coordenateC = coordenateC; 
  }
}
