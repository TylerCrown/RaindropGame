PVector mouse;   //declare a P
Raindrop r;//declare a new Raindrop called r
Bucket b;
PImage jets;
ArrayList<Raindrop> raindrop = new ArrayList<Raindrop>();

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  jets = loadImage("Jets.jpg");
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  b = new Bucket();
  r = new Raindrop(random(width), 0);   //Initialize r. The parameters used are the initial x and y positions
}




void draw() {
  image(jets, 0, 0, 1200, 800); 
  mouse.set(mouseX, mouseY);  //set value of mouse as mouseX,mouseY
  b.display();
  r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  r.display();      //display the raindrop
  if (r.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
    r.reset(random(width));                         //if it is, reset the raindrop
  }
  if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
    r.reset(random(width));                           //if it does, reset the raindrop
  }
}