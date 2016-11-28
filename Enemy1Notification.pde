class Enemy1Notification
{
  float cx;
  float cy;
  int t = 0;
  
  Enemy1Notification(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void createEnemy1Notification()
  {
    if(Enemy1hit == 1)
    {
      fill(255, 0 , 0);
      rect(cx - width/6, cy - height/8, width/6 * 2, height/8 * 2, 20, 20, 20, 20); 
      textSize(40);
      fill(0);
      text("Enemy1 hit", cx - width/12 , cy + height/32);
      t++;
      if(t >= 100)
      {
        Enemy1hit = 4;
      }
    }
  }
}