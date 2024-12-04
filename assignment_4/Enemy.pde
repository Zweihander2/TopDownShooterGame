//Establish class

class Enemy {
  
 //variables
  
 color c;
 PVector position = new PVector(random(20, 380), 0);
 PVector velocity = new PVector(0, 1);
 PVector acceleration = new PVector(0, -0.8);
 int health = 20;
 
 //constructor
 
 Enemy() {
  c = color(255, 0, 0);
 }
 
 //display function that shows the object, its movement, and its color
 
 void display() {
   position.y = position.y + velocity.y;
  rectMode(CENTER);
  fill(c);
  rect(position.x, position.y, 20, 20);
 }
 
 //For when the enemy is shot down
 
 void reset() {
  position.y = 0;
  position.x = random(20, 380);
  
  //resets health and color
  
  health = 20;
  c = color(255, 0, 0);
  velocity.y = velocity.y + 0.1;
 }

  //For when the enemy is being shot, contains the code for its death and call to reset within

 void attack() {
  if (mouseX >= enemy.position.x - 10 && mouseX <= enemy.position.x + 10) {
    health = health - 1;
    c = color(random(100, 200));
        c = color(random(100, 200));
  } else {
    c = color(255, 0, 0);
  }
  if (health <= 0) {  
  enemy.reset();
  }
} 
 }
