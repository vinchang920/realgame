class Laser {
  int fx, fy;
  int x, y;
  float speed;
  color c;
  float r;
  
  Laser (int x, int y) {
    r =10; 
    this.x =x;
    this.y = y;
    speed = random(3,5);
    c = color(255, 0, 0);
  }
  void shoot() {
    y -= speed;
  }
  
  boolean reachedTop() {
    if(y < 0 + r*4) {
      return true;
    } else {
      return false;
    }
  }
  
  void display() {
    fill(c);
    noStroke();
    for (int i = 2; i < r; i++) {
      if(mr){
      //  x = 100;
       // y = 100;
      rect(x, y-2, 4, 10);
      }
    }
  }
 
}