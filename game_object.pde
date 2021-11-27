class GameObject {

color c;
int roomX, roomY;
 PVector loc;
  PVector vel;
  int hp;
   int size;
   
  GameObject() {
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    hp = 1;
    c = purple;
  }
  
  void show() {
    
  }
  
  void act() {
    
    //move
    loc.add(vel);
    
    //check for hitting walls
    if (loc.x < width*0.1) loc.x = width*0.1;
     if (loc.x > width*0.9) loc.x = width*0.9;
      if (loc.y < width*0.1) loc.y = width*0.1;
      if (loc.y > width*0.9) loc.y = width*0.9;
  }
  
}
