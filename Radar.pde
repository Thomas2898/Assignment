class Radar
{
  float cx, cy;
  float rx = (width/3)/2, ry = height - (height/3)/2 - 50; //center of the circle
  float theta = 0;
  float radius = (width/3 - (width/3)/5)/2 - 45;
  float speed = 0.02;
  int line = 20;
  
  Radar(float cx, float cy)
  {
    this.cx = cx;
    this.cy = cy;
  }
  
  void updateRadar()
  {
    theta += speed;
  }
  
  void renderRadar()
  {
    float x;
    float y;
    stroke(0, 100, 100);
    fill(0);
    ellipse(rx, ry, radius * 2, radius * 2);  
    
    for(int i = 0 ; i < line ; i++)
    {
      float lTheta = theta - (i*speed);
      x = rx + sin(lTheta) * radius;
      y = ry - cos(lTheta) * radius;
      line(rx, ry, x, y);
      println(x);
      if(x > 195.74303 && x < 200.34216)
      {
        fill(255, 0, 0);
        ellipse(rx - radius/2 + 5, ry + radius/2 - 10, 5, 5);
      }
    }
    
    noFill();
    stroke(0, 100, 100);
    line(rx + radius, ry, rx - radius, ry);
    line(rx, ry + radius, rx, ry - radius);
    ellipse(rx, ry, radius/2, radius/2); 
    ellipse(rx, ry, radius, radius); 
    ellipse(rx, ry, radius + radius/2, radius + radius/2);
    ellipse(rx, ry, radius * 2, radius * 2);  
  }
}