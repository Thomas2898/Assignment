class Airpressure
{
  float sx, cx;
  float xrec = sx * 2 + (width/3)/5;
  float yrec = ((height/3)*2/9);
  float l = ((width/3)/5)*4;
  float airRec= yrec/10; //Used for y position of blocks
  float nameBox; //Used to hold y co-ordinate of air pressure box
  int t = 0; //Used to create new block when t = a certain value
  
  Airpressure(float cx, float sx)
  {
    this.sx = sx;
    this.cx = cx;
    xrec = sx * 2 + (width/3)/5;
    yrec = ((height/3)*2/9);
    l = ((width/3)/5)*4;
    airRec= yrec + yrec * 6;
    nameBox = airRec; 
  }
 
  void createAir()
  {
    if(p == 1)
    {
      stroke(0, 100, 100);
      noFill();
      rect(xrec, yrec, l/3, yrec * 6);
      airRec = yrec + yrec * 6;
      t = 0;
    }
    stroke(0, 100, 100);
    fill(0, 100, 100);
    rect(xrec, nameBox, l/3, yrec*2 - 20, 10, 10, 10, 10);
    fill(0);
    textSize(20);
    text("Air", xrec + 40, nameBox + 30);
    text("Pressure", xrec + 15, nameBox + 50);
    noFill();
    rect(xrec, yrec, l/3, yrec * 6);
    
    //Used to create the air pressure blocks
    if(t % 100 == 0)
    {
      stroke(0);
      fill(0, 100, 100);
      airRec -= yrec*6/10;
      rect(xrec + 1, airRec, l/3 - 1, yrec*6/10-1, 10, 10, 10, 10);
    }
    t+=2;
    
    //Used to stop blocks from going outside air pressure block
    if(t % 1000 == 0)
    {
      fill(0);
      rect(xrec, yrec, l/3, yrec * 6);
      airRec= yrec + yrec * 6;
    }
  }
}