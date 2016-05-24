// Create a space in memory for many Mover objects
int amount = 1;
int level = 1;
Bouncer movers = new Bouncer(150,700,100,500);
Mover lvl1 = new Mover();
// Runs once

void setup() {

  // Create a white background
  size(600, 600);
  background(255);

if(level == 1)
lvl1 = new Mover();

if(level == 2)
  movers = new Bouncer(100,100,200, 200);
 //  for (int i = 0; i < movers.length; i++) {
    
//  }

}

// Runs forever


void draw() {

  // Clear the background
 // background(255);
  background(255);
   fill(0,0,255);
ellipse(width/2, height/2, 16, 16);
fill(0,255,0);
lvl1.update();
lvl1.checkEdges();
lvl1.display();
  // Make the mover move!
  
  /*
    fill(0,255,0);
    movers.update();
    movers.checkEdges();
    movers.display();
 */ 
}