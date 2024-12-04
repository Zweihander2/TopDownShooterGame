//sets up class

class Player {
  
//variables
  
 color c; 
 float Y;
 
//Constructor 
 
 Player() {
  c = color(255);
  Y = 390;
 }
 
//Displays player, follows mouseX 
 
 void display() {
  rectMode(CENTER);
  fill(c);
  rect(mouseX, Y, 20, 20);
 }
}
