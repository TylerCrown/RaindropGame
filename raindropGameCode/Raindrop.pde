
class Raindrop {
  PVector loc, vel, accel;
  float diam;
  float hue, sat, bright, alpha;

  Raindrop (float x, float y) {
    diam = 20;
    loc= new PVector(x, y);
    vel= PVector.random2D();
    accel= new PVector (0, .1);
    hue = random(360);
    sat = random (70,90);
    bright = random(80,100);
    alpha = 80;
  }
  void display () {
    noStroke();
fill(hue,sat,bright,alpha);
ellipse(loc.x,loc.y,diam,diam);
  
  }

  void fall () {
    vel.add(accel);
    loc.add(vel);
   
  }
  boolean isInContactWith (PVector thing) {
    return thing.dist(loc)<=diam/2;
  }
    void reset (float x, float y) {
   loc.set(x,y);
   vel = PVector.random2D();
  } 
}