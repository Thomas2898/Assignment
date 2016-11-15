class Jet
{
  float jx, jy;
  
  PShape jet;
  
  Jet(float jx, float jy)
  {
    this.jx = jx;
    this.jy = jy;
    
    createJet();
  }
  
  void createJet()
  {
    jet = createShape();
    jet.beginShape();
    jet.stroke(0, 100, 100);
    jet.fill(0);
    //Right side
    jet.vertex(20, 30);
    jet.vertex(20, 70);
    jet.vertex(50, 200);
    jet.vertex(170, 270);
    jet.vertex(175, 254);
    jet.vertex(185, 254);
    jet.vertex(185, 330);
    jet.vertex(175, 330);
    jet.vertex(170, 315);
    jet.vertex(40, 312);
    jet.vertex(40, 362);
    jet.vertex(90, 422);
    jet.vertex(35, 422);
    jet.vertex(35, 410);
    jet.vertex(15, 410);
    jet.vertex(15, 425);
    jet.vertex(0, 450);
    //Left side
    jet.vertex(-15, 425);    
    jet.vertex(-15, 410);
    jet.vertex(-35, 410);
    jet.vertex(-35, 422);
    jet.vertex(-90, 422);
    jet.vertex(-40, 362);
    jet.vertex(-40, 312);
    jet.vertex(-170, 315);
    jet.vertex(-175, 330);
    jet.vertex(-185, 330);
    jet.vertex(-185, 254);
    jet.vertex(-175, 254);
    jet.vertex(-170, 270);
    jet.vertex(-50, 200);
    jet.vertex(-20, 70);
    jet.vertex(-20, 30);
    jet.vertex(0, 0);
    jet.endShape(CLOSE);
    
  }
  
  void updateJet()
  {
    shape(jet, jx, jy);
  }
}