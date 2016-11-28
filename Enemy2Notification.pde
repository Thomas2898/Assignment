class Enemy2Notification
{
  float cx;
  float cy;
  int t1 = 0;
  
  Enemy2Notification(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void createEnemy2Notification()
  {
    if(Enemy2hit == 1)
    {
      fill(255, 0 , 0);
      rect(cx - width/6, cy - height/8, width/6 * 2, height/8 * 2, 20, 20, 20, 20); 
      textSize(40);
      fill(0);
      text("Enemy2 hit", cx - width/12 , cy + height/32);
      t1++;
      if(t1 >= 100)
      {
        Enemy2hit = 2;
      }
    }
  }
}