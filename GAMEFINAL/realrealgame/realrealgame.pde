Spaceship [] mySpaceship = new Spaceship [1];
Stars [] myStars;
Laser [] myLaser = new Laser [500000000];
Rocks [] myRocks;
Alien [] myAliens;
int l = 0;
boolean mr;
void setup() {
  size(400, 400);
    myLaser[0] = new Laser(0, 0);
  myStars = new Stars[100];
  for (int i =0; i< myStars.length; i ++) {
    myStars[i] = new Stars(int(random(width)), int(random(height)), 7);
  }
  myRocks = new Rocks[100];
  for (int i =0; i< myStars.length; i ++) {
    myRocks[i] = new Rocks(int(random(width)), int(random(height)), 5);
  }
    myAliens = new Alien[2];
  for (int i =0; i< myAliens.length; i ++) {
    myAliens[i] = new Alien(int(random(width)), int(random(height)), 5);
  }
}
void draw() {
  background(0);

  for (int i=0; i<myStars.length; i++) {
    myStars[i].move();
    myStars[i].display();
  }
  for (int i=0; i<myRocks.length; i++) {
    myRocks[i].move();
    myRocks[i].display();
  }
    for (int i=0; i<myAliens.length; i++) {
    myAliens[i].move();
    myAliens[i].display();
  }
  for(int i =0; i<l; i++){
      myLaser[i].display();
      myLaser[i].shoot();
  }
    mySpaceship[0] = new Spaceship(mouseX, mouseY);
  for (int i =0; i<mySpaceship.length; i++) {
    mySpaceship[i].display();
  }

}

void mouseReleased() {



  l++;
   myLaser[l] = new Laser(mouseX, mouseY);
}