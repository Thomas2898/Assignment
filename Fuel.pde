class Fuel 
{
  float sx, cx;
  float xrec;
  float yrec = ((height/3)*2/9);
  float l = ((width/3)/5)*4;
  float fuelBoxs = yrec - yrec*6/10 - 1;
  int t = 0;
  int c = 0;
  
  Fuel(float sx, float cx)
  {
    this.sx = sx;
    this.cx = cx;
    xrec = sx * 2 + (width/3)/5;
  }
  
  void createFuel()
  {
    if(p == 1)
    {
      c = 0;
    }
    
    stroke(0, 100, 100);
    fill(0, 100, 100);
    rect(width - l/3 , yrec + yrec * 6, l/3, yrec*2 - 20, 10, 10, 10, 10);
    fill(0);
    textSize(20);
    text("Fuel", width - l/3 + 35, yrec + yrec * 6 + 40);
    noFill();
    rect(width - l/3, yrec, l/3, yrec * 6);
    
    noStroke();
    for(float i = yrec ; i < yrec * 6.5 ; i+=yrec*6/10)
    {
      if(c <= 4)
      {
        fill(0, 255, 0);
      }
      else if( c <= 7)
      {
        fill(255, 255, 0);
      }
      else
      {
        fill(255, 0, 0);
      }
      rect(width - l/3 + 1, i, l/3 - 1, yrec*6/10-1, 10, 10, 10, 10);
      c++;
    }
  }
  
  void fuelDecrease()
  {
    if(p == 1)
    {
      fuelBoxs = yrec - yrec*6/10 - 1;
    }
    stroke(0, 100, 100);
    fill(0, 100, 100);
    rect(width - l/3, yrec + yrec * 6, l/3, yrec*2 - 20, 10, 10, 10, 10);
    fill(0);
    textSize(20);
    text("Fuel", width - l/3 + 35, yrec + yrec * 6 + 40);
    noFill();
    rect(width - l/3, yrec, l/3, yrec * 6);
    
    stroke(0);
    fill(0);
    
    if(fuelBoxs >= yrec * 6.5)
    {
      fuelBoxs = yrec * 6/10;
    }
    
    //Used to allow notification to appear when fuelboxes is equel to or greater than yrec * 5
    if(fuelBoxs >= yrec * 5)
    {
      fuelnot = 1;
      fuel(fuelnot);
    }
    
    if(t % 100 == 0)
    {
      rect(width - l/3 + 1, fuelBoxs, l/3 - 1, yrec*6/10);
      fuelBoxs += yrec*6/10;
    }
    t++;
  }
  
  int fuel(int fuelnot)
  {
    return fuelnot;
  }
}