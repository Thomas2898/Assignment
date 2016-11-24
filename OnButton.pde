class OnButton
{
  float cx;
  float cy;
  float xrec = width/3 + (width/3)/8;
  float yrec = height - height/9;
  boolean overB = false;
  OnButton(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void updateOnButton(int x, int y)
  {
    noStroke();
    if(mouseX >= xrec && mouseX <= xrec + (width/3)/8 * 2 && mouseY >= yrec && mouseY <= yrec + yrec)
    {
      overB = true;
      fill(0, 255, 0);
      rect(xrec, yrec,(width/3)/8 * 2, yrec, 10, 10, 10, 10);
    }
    else
    {
      overB = false;
      fill(0, 100, 0);
      rect(xrec, yrec,(width/3)/8 * 2, yrec, 10, 10, 10, 10);
    }
  }
  
  void mousePressed()
  {
    if(overB)
    {
      p = 1;
      println("Hello");
      result(p);
    }
  }
  
  int result(int p)
  {
    return p;
  }
}