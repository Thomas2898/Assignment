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
     
     //Buildings
     noStroke();
     fill(100);
     rect(width/3 + 130, height/9, width/8, height/9 * 2); 
     rect(width/3 + 130, height/9 * 3.5, width/8, height/9 * 2);
     rect(width/3, height/9 * 2.5 , (width/3)/8 * 2, height/9 * 4);
     rect(width/3, height/9 * 7 , (width/3)/8 * 2, height/9 + 5);
     rect((width/3) * 2, height/9, -(width/3)/8 * 1.5, height/9 * 7 + 5); 
   }
}