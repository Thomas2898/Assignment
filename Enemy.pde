class Enemy
{
  float sx;
  float cx;
  float xrec;
  float yrec;
  boolean overB = false;
  
  Enemy(float sx, float cx)
  {
    this.sx = sx;
    this.cx = cx;
    this.xrec = width/3;
    this.yrec = height/9;
  }
  
  void updateEnemy()
  {
    noStroke();
    if(mouseX >= xrec && mouseX <= xrec + (width/3)/8 * 2 && mouseY >= yrec && mouseY <= yrec + yrec)
    {
      overB = true;
      fill(255, 0, 0);
      rect(xrec, yrec,(width/3)/8 * 2, yrec);
    }
    else
    {
      overB = false;
      fill(255, 0, 0);
      rect(xrec, yrec,(width/3)/8 * 2, yrec);
    }
    
    if(mc == 1 && enemy ==1 || mc2 == 1 && enemy == 1)
    {
      fill(0);
      rect(xrec, yrec,(width/3)/8 * 2, yrec);
      Enemy1hit = 1;
    }
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        enemy = 1;
        result(enemy);
      }
    }
  }
  
  int result(int enemy)
  {
    return enemy;
  }
}