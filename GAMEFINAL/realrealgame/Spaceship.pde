class Spaceship {
  int x , y;

  Spaceship(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    
 //this is the nose of the spaceship
 noStroke();
 fill(130);
  rect(x-5, y-50, 10, 60, 40, 50, 15, 15);
  

  //these are the engines
  rect(x+10, y+3, 10, 20, 15);
  rect(x-20, y+3, 10, 20, 15);

  //these are the cannons
  fill(200);
  rect(x+10, y-30, 2, 30);
  rect(x+9, y-30, 4, 6);
  rect(x-11, y-30, 2, 30);
  rect(x-12, y-30, 4, 6);
  rect(x+20, y-15, 2, 15);
  rect(x+19, y-20, 4, 6);
  rect(x-20, y-15, 2, 15);
  rect(x-21, y-20, 4, 6);

  //this is the body of the ship
  fill(130);
  quad(x, y-20, x+50, y+20, x, y, x-50, y+20);
  
  
  //this is the cockpit
  fill(200);
  ellipse(x, y-3, 15, 25);
  }
}