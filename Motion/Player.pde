class Player {
  
  RVector location;
  RVector velocity;
 RVector acceleration;
 
 // constructor
  Player() {
    
    location = new RVector(500, 100);
    velocity = new RVector(0, 0);
  
    
  }
  
  // update position
  void update() {
    
    
   
  }
  
  // show the object
  void display() {
   
   
    stroke(0);
    
   
  
     ellipse(location.x, location.y, 16, 16);
   
  
   
  
 
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