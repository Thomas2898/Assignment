class Launch1
{
  float sx;
  float cx;
  float xrec;
  float yrec;
  boolean overB = false;
  
  Launch1(float sx, float cx)
  {
    this.sx = sx;
    this.cx = cx;
    this.xrec = sx/5 + 20;
    this.yrec = height/9 * 2;
  }
  
  void updateLaunch1()
  {
    noStroke();
    if(mouseX >= xrec && mouseX <= xrec + (width/3)/5 * 2 && mouseY >= yrec && mouseY <= yrec + height/9)
    {
      overB = true;
      fill(0, 100, 200);
      rect(xrec, yrec,(width/3)/5 * 2, height/9, 10, 10, 10, 10);
    }
    else
    {
      overB = false;
      fill(0, 100, 100);
      rect(xrec, yrec,(width/3)/5 * 2, height/9, 10, 10, 10, 10);
    }
    
    fill(0);
    textSize(20);
    text("Launch", xrec + (width/3)/8 - 8, yrec + 40);
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        mc = 1;
        result(mc);
      }
    }
  }
  
  //Returns value to allow the launch of missile 1
  int result(int mc)
  {
    return mc;
  }
}