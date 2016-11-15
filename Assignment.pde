void setup()
{
  size(1200, 600);
  background(0);
  float cx = width/2;
  float cy = height/2;
  float sx = width / 3;
  jet = new Jet(cx, height);
  jet.updateJet();
}

Jet jet;
void draw()
{
  
}