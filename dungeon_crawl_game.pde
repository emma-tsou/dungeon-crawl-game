int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//settings: enemies
final int TURRET_HP = 50;
final int TURRET_SIZE = 50;
final int TURRET_THRESHOLD = 60;
final int TURRET_BULLET_SPEED = 5; 

final int SPAWNINGPOOL_HP = 50;
final int SPAWNINGPOOL_SIZE = 100;
final int SPAWNINGPOOL_THRESHOLD = 100;
final int x = 0;
final int y = 0;

//keyboard input
boolean w, a, s, d, space;

//color pallette
color blue = #1EE7FB;
color green = #C3F83C;
color pink = #F1416B;
color purple = #C981E6;
color yellow = #FFF387;
color Dgray = #1C0F00;
color Dbrown = #6B4F00;
//color brown = #987G1D;

//settings: weapons


PFont volcanicDungeon;
PImage map;
color northRoom, eastRoom, southRoom, westRoom;
Hero myHero;
ArrayList <DarknessCell> darkness;

//Game objects
ArrayList<GameObject> myObjects;

AnimatedGIF nightsky;


void setup() {
  size(800, 600, FX2D);
  
  nightsky = new AnimatedGIF (12, "frame_", "_delay-0.07s.png", 0, 0, 600, 800);

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
 volcanicDungeon = createFont("Volcanic Dungeon.ttf", 50);
 
  //Load GIFs
  AnimatedGIF introGIF;
  
   //Initialize
  mode = INTRO;
 
  //loading the enemies from the map
x = 0;
y = 0;
while (y < map.height) {
 color roomColor = map.get(x,y);
 if (rooomColor == pink) {
   myObjects.add(new Enemy(x, y)); 
 }
  x++;
  if (x == map.width) {
    x = 0;
    y++;
  }
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
