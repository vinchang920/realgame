class Alien {
  float xpos;
  float ypos;
  float xspeed;
  
  Alien(float tempXpos, float tempYpos, float tempXspeed)
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
    fill(200);
    ellipse(xpos, ypos, 100, 35);
    fill(#03FFF9);
    ellipse(xpos, ypos-25, 70, 25);
  }
}