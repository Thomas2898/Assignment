class MainButton
{
  float cx;
  float cy;
  float xrec;
  float yrec;
  boolean overB = false;
  
  MainButton(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
    this.xrec = (width/3)/5;
    this.yrec = height/9 * 8;
  }
  
  void updateMainButton()
  {
        noStroke();
    if(mouseX >= xrec && mouseX <= xrec + (width/3)/5 * 3 && mouseY >= yrec && mouseY <= yrec + yrec)
    {
      overB = true;
      fill(0, 100, 200);
      rect(xrec, yrec,(width/3)/5 * 3, yrec, 10, 10, 10, 10);
    }
    else
    {
      overB = false;
      fill(0, 100, 100);
      rect(xrec, yrec,(width/3)/5 * 3, yrec, 10, 10, 10, 10);
    }
    
    fill(0);
    textSize(30);
    text("Main Screen", xrec + (width/3)/8 - 15, yrec + 40);
  }
  
   void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        m = 0;
        missile(m);
      }
    }
  }
  
  int missile(int m)
  {
    return m;
  }
}