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

  //draw floor
  rectMode(CENTER);
  stroke(black);
  fill(brown);
  rect(width/2, height/2, width*0.8, height*0.8);
}
