int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

PFont volcanicDungeon;
PImage map;
color northRoom, eastRoom, southRoom, westRoom;
Hero myHero;
ArrayList <DarknessCell> darkness;

//Game objects
ArrayList<GameObject> myObjects;


void setup() {
  size(800, 600, FX2D);
  
   //create objects

  myObjects.add(myHero); 
  myObjects.add(new Enemy());
  myObjects.add(new Follower(1, 2));
  myObjects.add(new Follower(2, 1));
  myObjects = new ArrayList<GameObject>(1000);

  
  //Alignments
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  
  //Load Fonts
 
  //Load GIFs
  AnimatedGIF introGIF;
}

void draw() {
   //create darkness
  darkness = new ArrayList<DarknessCell>(1000);
  float size = 50;
  int x = 0; 
  int y = 0;
  
  while (y < map.height) {
    darkness.add(new DarknessCell(x, y, size));
    x += size;
    if (x >= map.width) {
      x = 0;
      y += size;
    }
  }
  
  //mode framework
  if (mode == INTRO) {
    intro();
  }
  else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else {
    println ("Mode error : " + mode);
  }
  
}
