class Raindrop {
  PVector loc, vel, accel;
  float diam, score;

  Raindrop (float x, float y) {
    loc= new PVector(x, y);
    vel= PVector.random2D();
    accel= new PVector (.5, 1);
  }
  void display () {
    noStroke();
    fill(51, 0, 0);
    ellipse(loc.x, loc.y, 70, 35);
  }

  void fall () {
    vel.add(accel);
    loc.add(vel);
  }
 boolean isInContactWith(PVector thing) {
    if (thing.dist(loc) > height + diam/2) {
      return true;
    } else {
      return false;
    }
  }

  void reset(float x) {
    loc.set(x, 0);
    vel = PVector.random2D();
  }
}