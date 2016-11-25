class Missile
{
  float mx, my;
  PShape miss;
  
  Missile(float mx, float my)
  {
    this.mx = width/3/5 * 4;
    this.my = my;
    
    createMissile();
  }
  
  void createMissile()
  {
    miss = createShape();
    miss.beginShape();
    miss.stroke(0, 100, 100);
    miss.fill(0);
    miss.vertex(width/3/5 - 20, 20);
    miss.vertex(0, 40);
    miss.vertex(-70, 40);
    miss.vertex(-90, 55);
    miss.vertex(-90, 40);
    miss.vertex(-200, 40);
    miss.vertex(-230, 70);
    miss.vertex(-230, 40);
    miss.vertex(-260, 30);
    miss.vertex(-260, 10);
    miss.vertex(-230, 0);
    miss.vertex(-230, -30);
    miss.vertex(-200, 0);
    miss.vertex(-90, 0);
    miss.vertex(-90, -15);
    miss.vertex(-70, 0);
    miss.vertex(0, 0);
    miss.endShape(CLOSE);
  }
  
  void updateMissile()
  {
    shape(miss, mx, my);
  }
}