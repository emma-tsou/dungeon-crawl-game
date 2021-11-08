void game() {
  drawRoom();
  drawGameObjects();
  drawLightLayer();
  drawMiniMap();
}

void drawRoom() {
  background(Lbrown);

  //draw corners
  stroke(black);
  strokeWeight(4);
  line(0, 0, width, height);
  line(width, 0, 0, height);

//draw exits
  //1 - find out which directions have exits
  northRoom = map.get(myHero.roomX, myHero.roomY-1);
  eastRoom  = map.get(myHero.roomX+1, myHero.roomY);
  southRoom = map.get(myHero.roomX, myHero.roomY+1);
  westRoom = map.get(myHero.roomX-1, myHero.roomY);
  
  //2 - draw doors where there are exits
  noStroke();
  fill(black);
  if (northRoom != #FFFFFF) {
    ellipse(width/2, height*0.1, 100, 100);
  }
  if (eastRoom != #FFFFFF) {
    ellipse(width*0.9, height/2, 100, 100);
  }
  if (southRoom != #FFFFFF) {
    ellipse(width/2, height*0.9, 100, 100);
  }
if (westRoom != #FFFFFF) {
    ellipse(width*0.1, height/2, 100, 100);
  }
  
  //draw floor
  rectMode(CENTER);
  stroke(black);
  fill(brown);
  rect(width/2, height/2, width*0.8, height*0.8);
}
