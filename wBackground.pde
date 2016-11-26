class wBackground
{
  float sx;
  float w;
  int n = 0;
  
  wBackground(float sx, float w)
  {
    this.sx = sx;
    this.w = w;
  }
  
  void updatewBackground()
  {
    stroke(40);
  
    //Vertical lines
   for(float i = sx; i < sx + sx + 4; i+=20)
   {
     line(i, 65, i, height - height / 9);
   }
  
   //Horizontal lines
   for(int i = height / 9; i < height - height/9; i+=20)
   {
     stroke(40);
     line(sx, i, sx * 2, i);
     fill(255);
   }
  
   // Rectangle surrounding the grid
   stroke(0, 100, 100);
   line(sx, height/9, sx*2, height/9);
   line(sx, height/9, sx, height - height/9 + 1);
   line(sx, height - height/9 + 1, sx*2, height - height/9 + 1);
   line(sx*2, height-height/9 + 1, sx*2, height/9);
   }
}