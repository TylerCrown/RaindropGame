class Raindrop {
  PVector loc,vel,accel;
  int diam;
  
  Raindrop (float x, float y) {
    diam = 20;
    loc= new PVector(x,y);
    vel= new PVector (0, 1);
    accel= new PVector (0, .1);
  }
  
  void display () {
    ellipse (loc.x,loc.y, diam, diam);
    fill (255);
    noStroke();
  }
  
  void fall () {
    loc.add(vel);
    vel.add(accel);
  }
} 
  