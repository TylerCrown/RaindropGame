class Raindrop {
  PVector loc, vel, accel;
  int diam;

  Raindrop (float x, float y) {
    diam = 20;
    loc= new PVector(x, y);
    vel= new PVector (0, 1);
    accel= new PVector (0, .1);
  }

  void display () {
    ellipse (loc.x, loc.y, diam, diam);
    fill (255);
    noStroke();
  }

  void fall () {
    loc.add(vel);
    vel.add(accel);
  }
  boolean isInContactWith (PVector thing) {
    return thing.dist(loc)<=diam/2;
  }
    void reset () {
    loc.y=0;
   loc.x = random(0,1200); 
   vel = new PVector (0,1);
  } 
}