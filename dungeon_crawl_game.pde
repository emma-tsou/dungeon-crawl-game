int mode;
int intro;
int game;
int pause;
int gameover;
PFont volcanicDungeon;
//Game objects
ArrayList<GameObject> myObjects;

void setup() {
  size(800, 600, FX2D);
  
  //Alignments
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  
  //Load Fonts
 
  //Load GIFs
  
}

void draw() {
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
