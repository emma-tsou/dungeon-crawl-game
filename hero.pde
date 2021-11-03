class Hero extends GameObject {
  
  float speed;
  int roomX, roomY;
  
  Hero() {
    super();
    speed = 5;
    roomX = 1;
    roomY = 1;
  }
  
}

void show() {
  fill(purple);
  stroke(black);
  strokeWeight(2);
  circle(loc.x, loc.y, 40);
}

void act() {
  super.act();
  
  if (w) vel.y = -speed;
  if (a) vel.x = -speed;
  if (s) vel.y = speed;
  if (d) vel.x = speed;
  
  if (vel.mag() > 5) vel.setMag(speed); 
  
  if (!w && !s) vel.y = vel.y * 0.75;
  if (!a && !d) vel.x = vel.x * 0.75;
  
   //check exits
  //north
  if (northRoom != #FFFFFF && loc.y == height*0.1 && loc.x >= width/2-50 && loc.x <= width)
}
