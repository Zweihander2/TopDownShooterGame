//Initialize objects

Player player;
Projectile projectile;
Enemy enemy;
Enemy enemy1;
Enemy[] enemies = new Enemy [2];

//Variables

float locationEnemyX;
float locationEnemyY;
boolean fireGun = false;
   
void setup() {
 
 //establish size and new objects
 
 size(400, 400); 
 player = new Player();
 projectile = new Projectile();
    enemy = new Enemy();
    enemy1 = new Enemy();
    enemies[0] = new Enemy();
    enemies[1] = new Enemy();
    enemies[2] = new Enemy();
 }


void draw() {
  
 //set background and display player and enemy
  
 background(0);
  enemy.display();
 player.display();
 
 //Firing beam mechanism, displays projectile and player overtop of it
 
 if (fireGun == true) {
  fireGun = false;
       projectile.display();
       player.display();
 }
 
 //Press mouse to fire the weapon, the code for enemy damage and death is placed within this block as well
 
 if (mousePressed) {
   if (enemy.position.y >= 400) {
    fireGun = false; 
   } else {
   fireGun = true;
   enemy.attack(); 
   }
 }
   
 //If the enemy gets to the bottom of the screen, the screen goes red and you lose  
   
 if (enemy.position.y >= 400) { 
   background(255, 0, 0);
 }
 if (enemy.velocity.y >= 2) {
  enemy1 = new Enemy();
  enemy1.display();
 }
}
