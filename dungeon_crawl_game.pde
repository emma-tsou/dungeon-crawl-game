int mode;
int intro;
int game;
int pause;
int gameover;
PFont volcanicDungeon;
PImage map;
color northRoom, eastRoom, southRoom, westRoom;
//Game objects
ArrayList<GameObject> myObjects;

//create objects
myObjects = new ArrayList<GameObject>(1000);
myHero = new Hero();
myObjects.add(myHero); 

void setup() {
  size(800, 600, FX2D);
  
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
  float size = 100;
  int x = 0; y = 0;
  
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
  }
  
}
