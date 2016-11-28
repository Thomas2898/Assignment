class IncreaseSpeed
{
  float cx;
  float cy;
  float xrec = width/3 * 2 + 10;
  float yrec = height - height/9 * 3;
  boolean overB = false;
  
  IncreaseSpeed(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void updateSpeed()
  {
    noStroke();
    if(mouseX >= xrec && mouseX <= xrec + (width/3)/6 && mouseY >= yrec && mouseY <= yrec + height/9)
    {
      overB = true;
      fill(0, 255, 0);
      rect(xrec, yrec,(width/3)/6, height/9, 20, 20, 20, 20);
    }
    else
    {
      overB = false;
      fill(0, 100, 0);
      rect(xrec, yrec,(width/3)/6, height/9, 20, 20, 20, 20);
    }
    
    fill(0);
    textSize(40);
    text("+", xrec + (width/3)/8 - 32, yrec + 45);
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        s1 = 6;
      }
    }
  }
}