//one ellipse is accelerated toward another one 
class Level_2 {
  
  RVector location;
  RVector velocity;
 RVector acceleration;
 
  RVector location2;
  RVector velocity2;
 RVector acceleration2;
 int x1;
 int y1;
 int x2;
 int y2;
 // constructor
  Level_2(int x1, int y1, int x2,int y2) {
    this.x1 = x1;
     this.x2 = x2;
      this.y1 = y1;
       this.y2 = y2;
    location = new RVector(x1, y1);
    velocity = new RVector(-0.07, -1);
    acceleration = new RVector(0, 0);
    
    
    location2 = new RVector(x2, y2);
    velocity2 = new RVector(0.01, 1);
    acceleration2 = new RVector(0, 0);
  }
  
  // update position
  void update() {
    RVector mouse = new RVector(location2.x, location2.y);
   
     RVector direction = RVector.sub(mouse, location);
    
    // Normalize and scale the direction vecgtor
    direction.normalize();
    direction.mult(0.1);
    
    
   
    // Accelerate based on direction vector
    acceleration = direction;
    

   
    // update position
    
    // Move the ball according to it's speed
     velocity.add(acceleration);
    location.add(velocity);
    
    
    velocity2.add(acceleration2);
    location2.add(velocity2);
  }
  
  // show the object
  void display() {
   
   
    stroke(0);
    
    fill(0,255,0);
      ellipse(location.x, location.y, 50, 50);
      
      fill(0,0,255);
     ellipse(location2.x, location2.y, 16, 16);
   
  
   
  
 
   
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
    
     if (location2.x > width) {     // right edge
     // location2.x = 0;
      velocity2.x *= -1;
    } else if (location2.x < 0) {  // left edge
     // location2.x = width;
    velocity2.x *= -1;  
  }
    
    if (location2.y > height) {   // bottom edge
      //location2.y = 0;
      velocity2.y *= -1;
    } else if (location2.y < 0) { // top edge
    //  location2.y = height;
      velocity2.y *= -1;
    }
    
 
    
  }
}