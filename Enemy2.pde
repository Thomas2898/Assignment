class Enemy2
{
  float sx;
  float cx;
  float xrec;
  float yrec;
  boolean overB = false;
  
  Enemy2(float sx, float cx)
  {
    this.sx = sx;
    this.cx = cx;
    this.xrec = width/3 + 150;
    this.yrec = height/9 * 6;
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
    
    if(mc == 1 && enemy2 ==1 || mc2 == 1 && enemy == 1)
    {
      fill(0);
      rect(xrec, yrec,(width/3)/8 * 2, yrec);
    }
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        enemy2 = 1;
        result(enemy2);
      }
    }
  }
  
  int result(int enemy2)
  {
    return enemy2;
  }
}