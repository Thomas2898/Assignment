int p = 0;
int f = 0;
void setup()
{
  size(1200, 600);
  background(0);
  float cx = width/2;
  float cy = height/2;
  float sx = width / 3;
  jet = new Jet(cx, height/9);
  trans = new Transmission(cx, cy);
  target = new Targeting(cx, sx);
  airpres = new Airpressure(cx, sx);
  fuel = new Fuel(cx, sx);
  radar = new Radar(cx, cy);
  on = new OnButton(cx, cy);
  off = new OffButton(cx, cy);
  
  fuel.createFuel();
}

Jet jet;
Transmission trans;
Targeting target;
Airpressure airpres;
Fuel fuel;
Radar radar;
OnButton on;
OffButton off;

// Draws grid around the jet
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
  
  // Rectangle surrounding the jet and grid
  stroke(0, 100, 100);
  line(sx, height/9, sx*2, height/9);
  line(sx, height/9, sx, height - height/9 + 1);
  line(sx, height - height/9 + 1, sx*2, height - height/9 + 1);
  line(sx*2, height-height/9 + 1, sx*2, height/9);
  
}

void draw()
{
  if(p==0)
  {
    drawBackground();
    jet.updateJet();
    target.targetupdate();
    trans.createTrans();
    airpres.createAir();
    fuel.fuelDecrease();
    radar.renderRadar();
    radar.updateRadar();
    if(f == 1)
    {
      fuel.createFuel();
      f = 0;
    }
  }
  if(p==1)
  {
    airpres.createAir();
    background(0);
    f=1;
  }
  on.updateOnButton(mouseX, mouseY);
  on.mousePressed();
  off.updateOffButton(mouseX, mouseY);
  off.mousePressed();
}