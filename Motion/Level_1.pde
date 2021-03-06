//one ellipse is set to accelerate toward the center
class Level_1 {
  
  RVector location;
  RVector velocity;
 RVector acceleration;
 
 // constructor
 Level_1 () {
    
    location = new RVector(100, 100);
    velocity = new RVector(0, 2);
    acceleration = new RVector(1, 1);
    
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
    
   
  
 //    ellipse(location.x, location.y, 16, 16);
   
  
       ellipse(location.x, location.y, 50, 50);
   
  
 
   // ellipse(location.x, location.y, 16, 16);
  }
  
  // check for edges
 void checkEdges() {
    
    if (location.x > width) {     // right edge
     // location.x = 0;
      velocity.x *= -1;
    } else if (location.x < 0) {  // left edge
     // location.x = width;
      velocity.x *= -1;
    }
    
    if (location.y > height) {   // bottom edge
     // location.y = 0;
     velocity.y *= -1;
    } else if (location.y < 0) { // top edge
     // location.y = height;
      velocity.y *= -1;
    }
    
  
  
    
 
    
  }
}