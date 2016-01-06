PVector mouse;   //declare a P
Raindrop r;//declare a new Raindrop called r
Bucket b;
PImage jets;
int score;
ArrayList<Raindrop> raindrop = new ArrayList<Raindrop>();

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  jets = loadImage("Jets.jpg");
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  b = new Bucket();
  raindrop.add(new Raindrop(random(width), 0));
}




void draw() {
    image(jets, 0, 0, 1200, 800); 
    fill(145, 20, 0);
    text("JETS            BILLS 22", 50, 600, 300, 300);
    text(score, 200, 660);
    textSize(64);
    mouse.set(mouseX, mouseY);  //set value of mouse as mouseX,mouseY
    b.display();
    for (int i = raindrop.size()-1; i >= 0; i--) {  //go through the ArrayList backwards to prevent flickering
    Raindrop r = raindrop.get(i);  
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display(); //display the raindrop
    if (r.isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
        r.reset(random(0,750));    //if it is, reset the raindrop
      score+=7;
    }
    if (r.loc.y > height + r.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      r.reset(random(0, 500));                           //if it does, reset the raindrop
    }

    if (score>= 28) {
      background(0);
      fill(0,255,0);
      text("YOU BEAT THE BILLS 28-22!", 130, 250);
      text("ON TO THE PLAYOFFS YOU GO!", 100,350);
      textSize(32);
    }
    }
}