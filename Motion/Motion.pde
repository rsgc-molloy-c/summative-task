// Create a space in memory for many Mover objects
int amount = 1;
Bouncer movers = new Bouncer(150,700,200,200);

// Runs once
void setup() {

  // Create a white background
  size(600, 600);
  background(255);

 
 //  for (int i = 0; i < movers.length; i++) {
    movers = new Bouncer(100,100,200,200);
//  }

}

// Runs forever
void draw() {
  
   // Actually make an instance of a Mover
 
  // Clear the background
  
  background(255);

  // Make the mover move!
 // for (int i = 0; i < movers.length; i+=1) {
    movers.update();
    movers.checkEdges();
    movers.display();
 // }
}