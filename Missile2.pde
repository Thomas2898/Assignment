class Missile2
{
  float mx, my;
  PShape miss2;
  
  Missile2(float mx, float my)
  {
    this.mx = width/3/5 * 4;
    this.my = my;
    
    createMissile2();
  }
  
  void createMissile2()
  {
    miss2 = createShape();
    miss2.beginShape();
    miss2.stroke(0, 100, 100);
    if(mc2 == 1)
    {
      miss2.fill(255, 0, 0);
      miss2.noStroke();
    }
    else
    {
      miss2.fill(0);
    }
    miss2.vertex(width/3/5 - 20, 20);
    miss2.vertex(0, 40);
    miss2.vertex(-70, 40);
    miss2.vertex(-90, 55);
    miss2.vertex(-90, 40);
    miss2.vertex(-200, 40);
    miss2.vertex(-230, 70);
    miss2.vertex(-230, 40);
    miss2.vertex(-260, 30);
    miss2.vertex(-260, 10);
    miss2.vertex(-230, 0);
    miss2.vertex(-230, -30);
    miss2.vertex(-200, 0);
    miss2.vertex(-90, 0);
    miss2.vertex(-90, -15);
    miss2.vertex(-70, 0);
    miss2.vertex(0, 0);
    miss2.endShape(CLOSE);
  }
  
  void updateMissile2()
  {
    shape(miss2, mx, my);
  }
}