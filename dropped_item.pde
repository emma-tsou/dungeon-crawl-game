class DroppedItem extends GameObject {
  
  int type;
  Weapon w;
  
  DroppedItem(float x, float y, int rx, int ry) {
    type = GUN;
    w = new ShotGun();
    hp = 1;
    loc = new PVector(x, y);
    vel = new PVector(0, 0);
    size = 20;
    roomX = rx;
    roomY = ry;
    c = yellow;
  }
  
  void show() {
    stroke(black);
    
  }
  
   void act() {
   
 }
  
}
