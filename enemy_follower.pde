class Follower extends Enemy {
  
  Follower() {
    
  }
   void show() {
    stroke(black);
    strokeWeight(2);
    fill(green);
    circle(loc.x, loc.y, size);
    fill(black);
    textSize(15);
    text(hp, loc.x, loc.y);
    
  }
  
  void act() {
    
    
    
  }
}
