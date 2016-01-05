class Bucket {
  PVector loc;
  float diam;
  PImage thompkins;

  Bucket() {
    loc = new PVector(mouseX, mouseY);
    thompkins = loadImage("Thompkins.png");
  }
  void display () {

    image(thompkins, mouseX-75, 550, 250, 250);
  }
}