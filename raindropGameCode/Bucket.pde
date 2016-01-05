class Bucket {
  PVector loc;
  float diam;
  PImage thompkins;

  Bucket() {
    loc = new PVector(mouseX, mouseY);
    thompkins = loadImage("Thompkins.png");
  }
  void display () {
 rect(mouseX+50,550,50,50);
    image(thompkins, mouseX-45, 490, 250, 250);
  }
}