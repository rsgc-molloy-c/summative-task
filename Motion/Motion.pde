
// Create a space in memory for many Mover objects
int amount = 1;
int level = 0;
Level_2 lvl2 = new Level_2(0, 0, 0, 0);
Bouncer lvl3 = new Bouncer(0, 0, 0, 0);
Mover lvl1 = new Mover();
Player guy= new Player();
// Runs once
void setup() {

  // Create a white background
  size(600, 600);
  background(255);

 lvl2 = new Level_2(width/3, height/3, width/2, height/2);
  lvl3 = new Bouncer(100, 100, 200, 200);
  Mover lvl1 = new Mover();
 
  Player guy= new Player();
   

}

// Runs forever
void draw() {
 
  background(255);
  fill(0, 255, 0);
 rect(0,0,100,50);
 fill(255, 0, 0);
 rect(width-100,height-50,100,50);
 
 
 
 
 
fill(0, 255, 255);
  guy.update();
    guy.checkEdges();
    guy.display();


  if (level == 0) {
    
   


    textSize(32);
    fill(0, 102, 153);
    text("Gravity", width/5, height/4); 
    textSize(16);
    text("Level 0", width/5, height/4+25); 
    text("Move yourself using the arrow keys to get from one box ", width/5, height/4+65);
    text("to another, do not get hit by any other object or you will", width/5, height/4+80);
    fill(255, 0, 0);
    text("lose!", width/5, height/4+95);
  }

  if (level == 1) { 
    fill(0, 0, 255);
    ellipse(width/2, height/2, 16, 16);
    fill(0, 255, 0);
    lvl1.update();
    lvl1.checkEdges();
    lvl1.display();
  }

 if (level == 2) {
    lvl2.update();
    lvl2.checkEdges();
    lvl2.display();
  }


  if (level == 3) {
    lvl3.update();
    lvl3.checkEdges();
    lvl3.display();
  }
  
  
  
  
  if(guy.location.x > 500 && guy.location.y > 500){
    level ++;
    guy.location.x = 50;
    guy.location.y = 25;
    guy.velocity.x = 0;
    guy.velocity.y = 0;
    
    
  }
  
  
}


void keyPressed() {
  if (keyPressed)
  {
    if (key == 'w')
    {
      if (level != 0)
        level --;
    } else if (key == 's')
    {
      level ++;
    }
  }
  if (key == CODED) {
    if (keyCode == UP) {
      guy.velocity.y = -2;
      guy.velocity.x = 0;
    } else if (keyCode == DOWN) {
      guy.velocity.y = 2;
      guy.velocity.x = 0;
    } else if (keyCode == LEFT) {
      guy.velocity.x = -2;
      guy.velocity.y = 0;
    } else if (keyCode == RIGHT) {
      guy.velocity.x = 2;
      guy.velocity.y = 0;
    }}
}