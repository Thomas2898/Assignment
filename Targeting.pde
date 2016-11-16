class Targeting
{
  float sx, cx;
  int t = 0;
  float xrec = width/3*2 + (width/3)/5;// x co-ordinate for rectangle
  float yrec = height - height/3;
  float l = ((width/3)/5)*4;//Lenght of rectangle
  float w = ((height/3)/5)*4;//Width of rectangle
  float xcenterRec = xrec + l/2;
  float ycenterRec = yrec + w/2;
  
  Targeting(float sx, float cx)
  {
    this.sx = sx;
    this.cx = cx;
  }
  
  void targetupdate()
  {
     if(frameCount % 12 == 0)
     {
       println(frameCount);
       stroke(0, 100, 100);
       fill(0);
       rect(xrec, yrec, l, w, 10, 10, 10, 10);
       targetBackground();
       
       for(int i = 10 ; i < 90; i+= 20)
       {
         line(xcenterRec - i, ycenterRec + i, xcenterRec + i, ycenterRec + i);
         line(xcenterRec - i, ycenterRec + i, xcenterRec - i, ycenterRec - i + 5);
         line(xcenterRec + i, ycenterRec + i, xcenterRec + i, ycenterRec - i + 5);
       }
       
       for(int i = 90 ; i < 150; i+=20)
       {
         line(xcenterRec - i, ycenterRec + w/2, xcenterRec - i, ycenterRec - w/2);
         line(xcenterRec + i, ycenterRec + w/2, xcenterRec + i, ycenterRec - w/2);
       }
     }
     
     if(frameCount % 24 == 0)
     {
       stroke(0, 100, 100);
       fill(0);
       rect(xrec, yrec, l, w, 10, 10, 10, 10);
       targetBackground();
       
       for(int i = 20 ; i < 80 ; i+=20)
       {
         line(xcenterRec - i, ycenterRec + i, xcenterRec + i, ycenterRec + i);
         line(xcenterRec - i, ycenterRec + i, xcenterRec - i, ycenterRec - i + 5);
         line(xcenterRec + i, ycenterRec + i, xcenterRec + i, ycenterRec - i + 5);
       }
       
        for(int i = 80 ; i < 160; i+=20)
       {
         line(xcenterRec - i, ycenterRec + w/2, xcenterRec - i, ycenterRec - w/2);
         line(xcenterRec + i, ycenterRec + w/2, xcenterRec + i, ycenterRec - w/2);
       }
    
     }
     
     //Rectangle that holds speed
    stroke(0, 100, 100);
    fill(0);
    rect(xrec, height - ((height/3)/5), l, 30, 10, 10, 10, 10);
    fill(255, 0, 0);
    textSize(28);
    text(t, xrec +  l/4 + 80, height - ((height/3)/5) + 25);
    text("Speed:", xrec + 60, height - ((height/3)/5) + 25);
    t++;
   
  }
  
  void targetBackground()
  {
    //Left side
    line(xcenterRec, ycenterRec, xrec + l/9 * 2, yrec); 
    line(xcenterRec, ycenterRec, xrec + 3, yrec + 3);
    line(xcenterRec, ycenterRec, xrec, yrec + w/3);
    line(xcenterRec, ycenterRec, xrec, yrec + w/3 * 2);
    line(xcenterRec, ycenterRec, xrec + 3, yrec+w - 3);
    line(xcenterRec, ycenterRec, xrec + l/9 * 2 + 5, yrec+w); 
    
    //Right side
    line(xcenterRec, ycenterRec, xrec + l/9 * 7, yrec); 
    line(xcenterRec, ycenterRec, xrec + l - 3, yrec + 3);
    line(xcenterRec, ycenterRec, xrec + l, yrec + w/3);
    line(xcenterRec, ycenterRec, xrec + l, yrec + w/3 * 2);
    line(xcenterRec, ycenterRec, xrec + l - 3, yrec+w - 3);
    line(xcenterRec, ycenterRec, xrec + l/9 * 7 - 5, yrec+w); 
    
  }
}