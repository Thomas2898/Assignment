class FuelNotification
{
  float cx;
  float cy;
  
  FuelNotification(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void createFuelNotification()
  {
    if(fuelnot == 1)
    {
      fill(255, 0 , 0);
      rect(cx - width/6, cy - height/8, width/6 * 2, height/8 * 2, 20, 20, 20, 20); 
      textSize(40);
      fill(0);
      text("Fuel Low", cx - width/12 , cy + height/32);
    }
  }
}