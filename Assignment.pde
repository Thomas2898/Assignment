void setup()
{
  size(1200, 600);
  background(0);
  float cx = width/2;
  float cy = height/2;
  float sx = width / 3;
  jet = new Jet(cx, height/9);
  
  drawBackground();
  jet.updateJet();
}

Jet jet;

void drawBackground()
{
  stroke(40);
  float sx = width / 3;
  
   //Vertical lines
  for(float i = sx; i < sx + sx + 4; i+=20)
  {
    line(i, 65, i, height - height / 9);
  }
  
  //Horizontal lines
  for(int i = height / 9; i < height - height/9; i+=42)
  {
    line(sx, i, sx * 2, i);
  }
  
  stroke(0, 100, 100);
  line(sx, height/9, sx*2, height/9);
  line(sx, height/9, sx, height - height/9 + 1);
  line(sx, height - height/9 + 1, sx*2, height - height/9 + 1);
  line(sx*2, height-height/9 + 1, sx*2, height/9);
  
}

void draw()
{
  
}