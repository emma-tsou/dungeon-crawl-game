class AnimatedGIF {

  PImage[] images;
  int currentImg;
  int rate;

  AnimatedGIF(int n, String prefix, String suffix) {
    images = new PImage[n];
    loadImages(prefix, suffix);
    currentImg = 0;
    rate = 1;
  }

}
