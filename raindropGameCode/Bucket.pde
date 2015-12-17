class Bucket {
  PVector loc;
  float diam;
  PImage buck;
  
  Bucket(float tDiam) {
  tDiam = diam;
  loc = new PVector(mouseX,mouseY);
}
void display () {
    buck = loadImage("BUCKET.jpg");
   image(buck, mouseX, 730, 75,75);
}
}
  