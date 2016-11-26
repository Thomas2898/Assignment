int p = 0; //Used for the on/off buttons
int f = 0; //Used to re-create fuel when off button is clicked
int t = 0;
int m = 0; //Used to change to weapon screen
int mc = 0; //Used to change missile1 colour (If launched)
int mc2 = 0; //Used to change missile2 colour (if launched)
void setup()
{
  size(1200, 600);
  background(0);
  float cx = width/2;
  float cy = height/2;
  float sx = width / 3;
  jet = new Jet(cx, height/9);
  miss = new Missile(sx, height/9);
  miss2 = new Missile2(sx, height/9 * 5);
  trans = new Transmission(cx, cy);
  target = new Targeting(cx, sx);
  airpres = new Airpressure(cx, sx);
  fuel = new Fuel(cx, sx);
  radar = new Radar(cx, cy);
  on = new OnButton(cx, cy);
  off = new OffButton(cx, cy);
  wb = new wButton(cx, cy);
  l1 = new Launch1(sx, cx);
  
  fuel.createFuel();
}

Jet jet;
Missile miss;
Missile2 miss2;
Transmission trans;
Targeting target;
Airpressure airpres;
Fuel fuel;
Radar radar;
OnButton on;
OffButton off;
wButton wb;
Launch1 l1;

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
  //On button selected
  if(p==0)
  {
    //If weapons button is selected
    if(m==1)
    {
      background(0);
      miss.updateMissile();
      miss.createMissile();
      l1.updateLaunch1();
      l1.mousePressed();
      miss2.updateMissile2();
      miss2.createMissile2();
    }
    
    if(m==0)
    {
      drawBackground();
      jet.updateJet();
      target.targetupdate();
      trans.createTrans();
      airpres.createAir();
      fuel.fuelDecrease();
      radar.renderRadar();
      radar.updateRadar();
      wb.updatewButton();
      wb.mousePressed();
      if(f == 1)
      {
        fuel.createFuel();
        f = 0;
      }
    }
  }
  
  //Off button selected
  if(p==1)
  {
    target.targetupdate();
    trans.createTrans();
    airpres.createAir();
    fuel.createFuel();
    fuel.fuelDecrease();
    background(0);
    f=1;
  }
  on.updateOnButton(mouseX, mouseY);
  on.mousePressed();
  off.updateOffButton(mouseX, mouseY);
  off.mousePressed();
}