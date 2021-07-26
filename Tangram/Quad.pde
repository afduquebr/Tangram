class Quad extends Shape {
  PVector _coordenateA;
  PVector _coordenateB;
  PVector _coordenateC;
  PVector _coordenateD;
  
  // Default Constructor for Quadriletral Shapes
  Quad() {
    this(new PVector(-25,-25), new PVector(25,-25),new PVector(25,25),new PVector(-25,25));
  }
  
  // Specified Constructor for Quadrilateral Shapes
  Quad(PVector coordenateA, PVector coordenateB, PVector coordenateC, PVector coordenateD) {
    setQuad(coordenateA, coordenateB, coordenateC, coordenateD);
  }
  
  // Detail Aspect for Quadriletral Display
  @Override
  void aspect() {
    quad(coordenateA().x, coordenateA().y, coordenateB().x, coordenateB().y, coordenateC().x, 
                                            coordenateC().y, coordenateD().x, coordenateD().y);
  }
  
  // Return each Coordenate from the Quadrilateral Shape
  
  public PVector coordenateA() {
    return _coordenateA;
  }
  
  public PVector coordenateB() {
    return _coordenateB;
  }
  
  public PVector coordenateC() {
    return _coordenateC;
  }
  
  public PVector coordenateD() {
    return _coordenateD;
  }
  

  // Set Coordenates for Quadrilateral Shapes
  public void setQuad(PVector coordenateA, PVector coordenateB, PVector coordenateC, PVector coordenateD) {
    _coordenateA = coordenateA;
    _coordenateB = coordenateB;
    _coordenateC = coordenateC;
    _coordenateD = coordenateD;
  }
  
}
