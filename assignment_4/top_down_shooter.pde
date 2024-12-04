//Initialize objects

Player player;
Projectile projectile;
Enemy enemy;

//Variables

float locationEnemyX;
float locationEnemyY;
boolean fireGun = false;

//I failed to create an array, and after 2 days past due, I can't afford to take any more time

int[] value = new int[5];
   
void setup() {
 
 //establish size and new objects
 
 size(400, 400); 
 player = new Player();
 projectile = new Projectile();
    enemy = new Enemy();
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
   fireGun = true;
   enemy.attack(); 
   }
   
  //This is all I have to show for an array, I cannot afford to delay any longer 
   
   int n = 0;
   value[n + 1] = 4;
   value[n + 2] = 3;  
   value[n + 3] = 2;  
   value[n + 4] = 1;  
   
 //If the enemy gets to the bottom of the screen, the screen goes red and you lose  
   
 if (enemy.position.y >= 400) { 
   n++;
   background(255, 0, 0);
 }
}
