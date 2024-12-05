//Initialize objects

Player player;
Projectile projectile;
Enemy[] enemies = new Enemy [3];

//Variables

float locationEnemyX;
float locationEnemyY;
boolean fireGun = false; 
void setup() {
 
 //establish size and new objects
 
 size(400, 400); 
 player = new Player();
 projectile = new Projectile();
    enemies[0] = new Enemy();
    enemies[1] = new Enemy();
    enemies[2] = new Enemy();
 }


void draw() {
  
 //set background and display player and enemy
  
 background(0);
enemies[0].display();
 player.display();

 
 //Firing beam mechanism, displays projectile and player overtop of it
 
 if (fireGun == true) {
  fireGun = false;
       projectile.display();
       player.display();
 }
 
 //Press mouse to fire the weapon, the code for enemy damage and death is placed within this block as well
 
 if (mousePressed) {
   if (enemies[0].position.y >= 400) {
    fireGun = false; 
   } else if (enemies[1].position.y >= 400) {
    fireGun = false; 
   } else if (enemies[2].position.y >= 400) {
    fireGun = false; 
   } else {
   fireGun = true;
   enemies[0].attack();
   enemies[1].attack();
   enemies[2].attack();
   }
 }
   
 //If the enemy gets to the bottom of the screen, the game resets  
   
 if (enemies[0].position.y >= 400) { 
   enemies[0].retry();
   enemies[1].retry();
   enemies[2].retry();
   enemies[0].display();
   player.display();
 }
 if (enemies[1].position.y >= 400) { 
   enemies[0].retry();
   enemies[1].retry();
   enemies[2].retry();
   enemies[0].display();
   player.display();
 }
 if (enemies[2].position.y >= 400) { 
enemies[0].retry();
   enemies[1].retry();
   enemies[2].retry();
   enemies[0].display();
   player.display();
 }
 
 //Code that determines when a new enemy arrives
 
 if (enemies[0].velocity.y >= 2) {
enemies[1].display();
 }
 if (enemies[1].velocity.y >= 2) {
enemies[2].display();
 }
}
