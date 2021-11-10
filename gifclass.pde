AnimatedGIF nightsky;

void setup() {
  size(800, 800);
  nightsky = new AnimatedGIF (12, "frame_", "_delay-0.07s.png", 0, 0, 600, 800);
}

void draw() {
  nightsky.show();
  
}
