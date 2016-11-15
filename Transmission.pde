class Transmission
{
  float cx, cy;
  float xrec; //x co-ordinate for rectangle 
  float yrec; //y co-ordinate for rectangle
  float l;
  
   Transmission(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
    xrec = width/3;
    yrec = 2;
    l = xrec;
  }
  
  void createTrans()
  {
    float r = random(4, height/9 - 10);
    
    noFill();
    stroke(0, 100, 100);
    rect(xrec, yrec, xrec, height/9 - 10); 
    
    
    stroke(255, 0 , 0); 
    line(l, r, l, (height/9 - 10) - r);
    l++;// l used as a replacement for xrec. So xrec is not being added by 1 everytime the function is called
    
    if(l == xrec * 2)
    {
      l = xrec;
      fill(0);
      rect(xrec, yrec, xrec, height/9 - 10);
    }
  }
}