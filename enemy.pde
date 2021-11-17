class Enemy extends GameObject {

  Enemy() {
    hp = 100;
    roomX = 1;
    roomY = 1;
  }

  Enemy(int _hp, int s, int x, int y) {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    hp = _hp;
    size = s;
    roomX = x;
    roomY = y;
  }

  void show() {
    stroke(black);
    strokeWeight(2);
    fill(green);
    ellipse(loc.x, loc.y, 50);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }

  void act() {
    super.act();

    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y); 
        if (d <= size/2 + obj.size/2) {
          hp = hp - 1;
          obj.hp = 0;
        }
      }
      i++;
    }
  }
}
