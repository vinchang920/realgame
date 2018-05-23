class Rocks {
  float xpos;
  float ypos;
  float xspeed;
  
  Rocks(float tempXpos, float tempYpos, float tempXspeed)
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
    fill(126, 70, 13);
    ellipse(xpos, ypos, 15, 8);
  }
}