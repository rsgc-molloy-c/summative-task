// Create a space in memory for many Mover objects
Mover movers[] = new Mover[25];

// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);

  // Actually make an instance of a Mover
  for (int i = 0; i < movers.length; i+=1) {
    movers[i] = new Mover();
  }
  
}

// Runs forever
void draw() {

  // Clear the background
  background(255);

  // Make the mover move!
  for (int i = 0; i < movers.length; i+=1) {
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
}