//Sets class

class Projectile {
  
//Variables  
  
  color c;
  float X;
  float Y;
  
//Constructor  
  
  Projectile() {
   X = mouseX;
   Y = 200;
   c = color(255, 255, 0);
  }

//Displays projectile, follows mouseX  
  
  void display() {
    X = mouseX;
   ellipseMode(CENTER);
   fill(c);
   ellipse(X, Y, 2, 4000);
   if (Y <= 0) {
    Y = 400; 
   }
  }
}
