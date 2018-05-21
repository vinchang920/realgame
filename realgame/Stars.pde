class Stars {
  float xpos;
  float ypos;
  float xspeed;
  
  Stars(float tempXpos, float tempYpos, float tempXspeed)
  {
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void move() {
    ypos = ypos+xspeed;
    if(ypos> height) {
      ypos = 0;
    }
  }
  void display() {
    fill(255);
    ellipse(xpos, ypos, 5, 5);
  }
}