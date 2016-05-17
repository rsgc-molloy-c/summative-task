class Bouncer {
  
  RVector location;
  RVector velocity;
 RVector acceleration;
 
 // constructor
  Bouncer() {
    
    location = new RVector(100, 100);
    velocity = new RVector(1, 1);
    acceleration = new RVector(0, 0.1);
    
  }
  
  // update position
  void update() {
    RVector mouse = new RVector(width/2, height/2);
     RVector direction = RVector.sub(mouse, location);
    
    // Normalize and scale the direction vecgtor
    direction.normalize();
    direction.mult(0.1);
    
    // Accelerate based on direction vector
    acceleration = direction;
    
    // update position
    velocity.add(acceleration);
    // Move the ball according to it's speed
     velocity.add(acceleration);
    location.add(velocity);
  }
  
  // show the object
  void display() {
   
   
    stroke(0);
    fill(175);
   
  
     ellipse(location.x, location.y, 16, 16);
   
  
   
  
 
   // ellipse(location.x, location.y, 16, 16);
  }
  
  // check for edges
 void checkEdges() {
    
    if (location.x > width) {     // right edge
      location.x = 0;
    } else if (location.x < 0) {  // left edge
      location.x = width;
    }
    
    if (location.y > height) {   // bottom edge
      location.y = 0;
    } else if (location.y < 0) { // top edge
      location.y = height;
    }
    
  }
}