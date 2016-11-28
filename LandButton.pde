class LandButton
{
  float cx;
  float cy;
  float xrec;
  float yrec;
  boolean overB = false;
  
  LandButton(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
    this.xrec = cx - width/6;
    this.yrec = cy + height/14;
  }
  
  void updateLandButton()
  {
    if(fuelnot == 1)
    {
      noStroke();
      if(mouseX >= xrec && mouseX <= xrec + (width/3)/6 && mouseY >= yrec && mouseY <= yrec + height/10)
      {
        overB = true;
        fill(0, 100, 200);
        rect(xrec, yrec,(width/3)/6, height/18, 20, 20, 20, 20);
      }
      else
      {
        overB = false;
        fill(0, 100, 100);
        rect(xrec, yrec,(width/3)/6, height/18, 20, 20, 20, 20);
      }
    
      fill(0);
      textSize(20);
      text("Land", xrec + 10, yrec + 25);
      }
  }
  
  void mousePressed()
  {
    if(mousePressed)
    {
      if(overB)
      {
        fuelnot = 0;
        fuel(fuelnot);
      }
    }
  }
  
  //returns value to get rid of the notification
  int fuel(int fuelnot)
  {
    return fuelnot;
  }
}