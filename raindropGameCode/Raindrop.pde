
class Raindrop {
  PVector loc, vel, accel;
  float diam,score;

  Raindrop (float x, float y) {
    loc= new PVector(x, y);
    vel= PVector.random2D();
    accel= new PVector (0, .1);
  }
  void display () {
    noStroke();
fill(51,0,0);
ellipse(loc.x,loc.y,70,35);
  
  }

  void fall () {
    vel.add(accel);
    loc.add(vel);
   
  }
  boolean isInContactWith (Bucket b) {
  if(loc.dist(b.loc) < diam/2 + b.diam/2){
    return true;
  }else{
    return false;
  }
  }
    void reset (float x) {
   loc.set(x,0);
   vel = PVector.random2D();
  } 
}