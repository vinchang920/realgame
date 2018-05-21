Spaceship [] mySpaceship = new Spaceship [1];
Stars [] myStars;
Laser [] myLaser = new Laser [1];
Rocks [] myRocks;
boolean mr;
void setup() {
  size(400, 400);

  myStars = new Stars[100];
  for (int i =0; i< myStars.length; i ++) {
    myStars[i] = new Stars(int(random(width)), int(random(height)), 7);
  }
  myRocks = new Rocks[100];
  for (int i =0; i< myStars.length; i ++) {
    myRocks[i] = new Rocks(int(random(width)), int(random(height)), 2);
  }
}
void draw() {
  background(0);
  mySpaceship[0] = new Spaceship(mouseX, mouseY);
  for (int i =0; i<mySpaceship.length; i++) {
    mySpaceship[i].display();
  }
  for (int i=0; i<myStars.length; i++) {
    myStars[i].move();
    myStars[i].display();
  }
  for (int i=0; i<myRocks.length; i++) {
    myRocks[i].move();
    myRocks[i].display();
  }
}

void mouseReleased() {
  myLaser[0] = new Laser(mouseX, mouseY);
  myLaser[0].shoot();
  myLaser[0].display();
}