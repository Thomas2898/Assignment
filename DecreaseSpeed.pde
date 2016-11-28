class DecreaseSpeed
{
  float cx;
  float cy;
  float xrec = width/3 * 2 + 10;
  float yrec = height - height/9 * 1;
  boolean overB = false;
  
  DecreaseSpeed(float cx, float cy)
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
      fill(255, 0, 0);
      rect(xrec, yrec,(width/3)/6, height/9, 20, 20, 20, 20);
    }
    else
    {
      overB = false;
      fill(100, 0, 0);
      rect(xrec, yrec,(width/3)/6, height/9, 20, 20, 20, 20);
    }
    
    fill(0);
    textSize(50);
    text("-", xrec + (width/3)/8 - 32, yrec + 48);
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        s1 = 12;
      }
    }
  }
}