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
    imageMode(CENTER);
    image(thompkins, mouseX, 490, 250, 250);
    imageMode(CORNER);
  }
}