class Bucket {
  PVector loc;
  float diam;
  PImage thompkins;

  Bucket() {
  ellipse(mouseX-45,490,50,50);
  loc = new PVector(mouseX,mouseY);
    thompkins = loadImage("Thompkins.png");
  }
  void display () {
    image(thompkins, mouseX-80, 490, 250, 250);
  }
}