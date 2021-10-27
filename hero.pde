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
