PImage img;



void setup() {

  size(800, 600);
  img = loadImage("55.jpg");

  noFill();
  stroke(0);
  for (int x = 0; x < 800; x = x+5) {
    for (int y = 0; y< 600; y= y +5) {
      color c = img.get(x, y);
      float luminosite = brightness(c);
      if (luminosite<10 ) { 
        ellipse(x, y, 20, 20);
      }
    }
  }
}
