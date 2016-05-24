// Create a space in memory for many Mover objects
/*int amount = 1;
 int level = 1;
 Bouncer lvl2 = new Bouncer(150,700,100,500);
 Mover lvl1 = new Mover();
 // Runs once
 
 void setup() {
 
 // Create a white background
 size(600, 600);
 background(255);
 
 // Runs forever
 
 }
 void draw() {
 
 
 
 
 
 
 
 // Clear the background
 // background(255);
 background(255);
 
 
 
 if(level == 1){  
 fill(0,0,255);
 ellipse(width/2, height/2, 16, 16);
 fill(0,255,0);
 lvl1.update();
 lvl1.checkEdges();
 lvl1.display();
 // Make the mover move!
 } 
 //if(level == 2){ 
 lvl2.display();
 lvl2.update();
 lvl2.checkEdges();
 
 //}
 }
 
 
 
 void keyPressed() {
 if (key == CODED)
 {
 if (keyCode == LEFT)
 {
 level = 1;
 } else if (keyCode == RIGHT)
 {
 level = 2;
 }
 }
 }*/
























// Create a space in memory for many Mover objects
int amount = 1;
int level = 0;
Bouncer lvl2 = new Bouncer(150, 700, 200, 500);
Mover lvl1 = new Mover();
// Runs once
void setup() {

  // Create a white background
  size(600, 600);
  background(255);


  lvl2 = new Bouncer(100, 100, 200, 200);
  Mover lvl1 = new Mover();
}

// Runs forever
void draw() {


  // Actually make an instance of a Mover

  // Clear the background

  background(255);
  
  if(level == 0){
    textSize(32);
text("Gravity", width/5, height/4); 
textSize(16);
text("Level 0", width/5, height/4+25); 
text("Move yourself using the arrow keys to get from one box ", width/5, height/4+65);
text("to another, do not get hit by any other object or you will", width/5, height/4+80);
fill(255, 0, 0);
text("lose!", width/5, height/4+95);

fill(0, 102, 153);
  }
  
 if(level == 1){ 
fill(0,0,255);
 ellipse(width/2, height/2, 16, 16);
 fill(0,255,0);
 lvl1.update();
 lvl1.checkEdges();
 lvl1.display();}
 
 if(level == 2){
  lvl2.update();
  lvl2.checkEdges();
  lvl2.display();}
  
}


void keyPressed() {
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      level --;
    } else if (keyCode == RIGHT)
    {
      level ++;
    }
  }
}