class People { //this is the class for people represented as stick figures
  float headsize;
  float torsoLength;
  float legLength;
  PVector position;
  PVector velocity;
  int moveLimit; // this value will be random and make people move for a bit and then change direction
  int level = 1; //this is the level of the game which would increase as the user succeeds on each level.
  float limitX = 600;
  float limitY = 500;
  float d;

 People(float headsize, float torsoLength) {//the totalNumber would increase as the game level increase
   this.headsize = headsize;//headsize of a person
   this.torsoLength = torsoLength;// the length of the torso
   this.position = new PVector(random(0, width), random(200, height));//change this to "WITHIN PLATFORM"
   this.velocity = new PVector(random(-2,2), 0);//velocity will be small -> people move around    
 }

void display() { //method for diplaying people on the platform
    ellipseMode(CENTER);//constructing a stick figure
    ellipse(this.position.x, this.position.y, headsize, headsize);//head
    line(this.position.x, this.position.y + (headsize/2), this.position.x, this.position.y + (headsize/2) + torsoLength);//torso
    line(this.position.x, this.position.y + (headsize/2) + 3, this.position.x - 5, this.position.y + (headsize/2) + 20);//left arm
    line(this.position.x, this.position.y + (headsize/2) + 3, this.position.x + 5, this.position.y + (headsize/2) + 20);//right arm
    line(this.position.x, this.position.y + (headsize/2) + torsoLength, this.position.x - 5, this.position.y+ (headsize/2) + torsoLength+ 20);//left leg
    line(this.position.x, this.position.y + (headsize/2) + torsoLength, this.position.x + 5, this.position.y + (headsize/2) + torsoLength +20);//right leg
  
  //since all the body parts are connected with the head(which is created by the input value of centerX and centerY)
  //I won't have to worry about moving every components individually in order to make the whole stick figure move
  //I would only have to consider centerX and centerY
     }
void inTheTrain() { //this method is used for figures put in the train
  
  
}
     
void move() { //make them move around
    position.add(velocity);
}
  void stopMoving() { //making the figure stop moving
  velocity.x = 0;
  velocity.y = 0;
  
  }
  
void changeDirection() { //method for making people change direction
    if((position.x > width) || (position.x < 0)) {
      velocity.x = velocity.x * -1;   
    }
}

void complexMovement() {
  if(position.x - position.x == random(0, 10)) {
    velocity.x = velocity.x * -1;
  }
}
  
void caughtByMouse() { //method for making people speak 
    d = dist(mouseX, mouseY, position.x, position.y);
    if(d < headsize) {
      position.x = mouseX;
      position.y = mouseY;
    }    
    if((position.x < 375) && (position.x > 225) && (position.y < 185) && (position.y > 65)) { //this conditional makes the figure stop moving once its on board
      stopMoving();
  }
}
}
