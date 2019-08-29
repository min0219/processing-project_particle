// A simple Particle class

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  PImage img;
  boolean isbigger = true;
  float len = random(20, 30);
  float speed = len;

  Particle(PVector l, PImage img_ , int direction) {
    if(direction==0){
      acceleration = new PVector(0, 0.05);
    }else if(direction==1){
      acceleration = new PVector(-0.05, 0);
    }else if(direction==2){
      acceleration = new PVector(0.05, 0);
    }else{
      acceleration = new PVector(0, -0.05);
    }
    velocity = new PVector(random(-8, 8), random(-8, 8));
    position = l.copy();
    lifespan = 255.0;
    img = img_;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }

  // Method to display
  void display() {
    imageMode(CENTER);
    image(img, position.x, position.y, speed, len);
    
    if(isbigger==true){
      speed += int(random(2, 4));
      if(speed >= len*1.7){
        isbigger = false;
      }
    }else if(isbigger==false){
      speed -= int(random(2,4));
      if(speed<=len){
        isbigger = true;
      }
    }
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
