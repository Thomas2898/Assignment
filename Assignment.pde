int p = 0; //Used for the on/off buttons
int f = 0; //Used to re-create fuel when off button is clicked
int t = 0;
int m = 0; //Used to change to weapon screen
int mc = 0; //Used to change missile1 colour (If launched)
int mc2 = 0; //Used to change missile2 colour (if launched)
int enemy = 0; //Used to destroy enemy if missile is launched
int enemy2 = 0; //Used to destroy enemy2 if missile is launched
int c = 0; //Used to change background for weapon page
int fuelnot = 0; //Used to allow fuel notification to appear
int i = 0;// Used to re-fuel fuel bar when land button is selected
int Enemy1hit = 0;
int Enemy2hit = 0;
int s1 = 12;//Used to change how fast the targeting system works
float s = 0;//Used to count the speed
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
  wbg = new wBackground(sx, height/9);
  l1 = new Launch1(sx, cx);
  l2 = new Launch2(sx, cx);
  en = new Enemy(sx, cx);
  en2 = new Enemy2(sx, cx);
  mbutton = new MainButton(cx, cy);
  fueln = new FuelNotification(cx, cy);
  landb = new LandButton(cx, cy);
  enemy1n = new Enemy1Notification(cx, cy);
  enemy2n = new Enemy2Notification(cx, cy);
  incspeed = new IncreaseSpeed(cx, cy);
  decspeed = new DecreaseSpeed(cx, cy);
  
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
Launch2 l2;
wBackground wbg;
Enemy en;
Enemy2 en2;
MainButton mbutton;
FuelNotification fueln;
LandButton landb;
Enemy1Notification enemy1n;
Enemy2Notification enemy2n;
IncreaseSpeed incspeed;
DecreaseSpeed decspeed;

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
      incspeed.updateSpeed();
      incspeed.mousePressed();
      decspeed.updateSpeed();
      decspeed.mousePressed();
      target.targetupdate();
      trans.createTrans();
      airpres.createAir();
      fuel.fuelDecrease();
      
    //If weapons button is selected
    if(m==1)
    {
      //Used to clear screen when entering weapons page
      if(c==1)
      {
        fill(0);
        rect(0, 0, width/3, height);
        rect(width/3, height/9, width/3, height);
        c = 0;
      }
      
      en.updateEnemy();
      en.mousePressed();
      en2.updateEnemy();
      en2.mousePressed();
      wbg.updatewBackground();
      miss.updateMissile();
      miss.createMissile();
      l1.updateLaunch1();
      l1.mousePressed();
      miss2.updateMissile2();
      miss2.createMissile2();
      l2.updateLaunch2();
      l2.mousePressed();
      mbutton.updateMainButton();
      mbutton.mousePressed();
      enemy1n.createEnemy1Notification();
      enemy2n.createEnemy2Notification();
      
      //Used to get rid of enemy1 hit notification
      if(Enemy1hit == 4)
      {
        fill(0);
        rect(width/3, height/9, width/3, height/9 * 8);
        en2.updateEnemy();
        en2.mousePressed();
        wbg.updatewBackground();
      }
      
      if(Enemy2hit == 2)
      {
        fill(0);
        rect(width/3, height/9, width/3, height/9 * 8);
        en.updateEnemy();
        en.mousePressed();
        wbg.updatewBackground();
      }
      
      
       //Used to re-fuel the fuel bar when off button selected
      if(f == 1)
      {
        fuel.createFuel();
        f = 0;
      }
    }

    //If main screen is selected
    if(m==0)
    {
      //Used to clear screen when returning to main screen
      if(c==0)
      {
        fill(0);
        rect(0, 0, width/3, height);
        rect(width/3, height/9, width/3, height);
        c = 1;
      }
      
      drawBackground();
      jet.updateJet();
      radar.renderRadar();
      radar.updateRadar();
      wb.updatewButton();
      wb.mousePressed();
      
      if(fuelnot == 1)
      {
       fueln.createFuelNotification();
       landb.updateLandButton();
       landb.updateLandButton();
       landb.mousePressed();
       i = 1;
      }
      
      //Used to get rid of fuel notification when land button selected
      if(fuelnot == 0)
      {
        fill(0);
        rect(width/3, height/9, width/3, height/9 * 8);
        drawBackground();
        jet.updateJet();
        
        //Used to re-fuel fuel bar when land button is selected
        if(i==1)
        {
          fuel.createFuel();
          i = 0;
        }
      }
      
      //Used to re-fuel the fuel bar when off button is selected
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
    fuelnot = 0;
    target.targetupdate();
    trans.createTrans();
    airpres.createAir();
    fuel.createFuel();
    fuel.fuelDecrease();
    background(0);
    f=1;
  }
  
  //This allows the On and Off button to always appear
  on.updateOnButton(mouseX, mouseY);
  on.mousePressed();
  off.updateOffButton(mouseX, mouseY);
  off.mousePressed();
}