
class People { //this is the class for people represented as stick figures
  float headsize;
  float torsoLength;
  float legLength;
  float centerX;
  float centerY;
  PVector position;
  PVector velocity;
  int moveLimit; // this value will be random and make people move for a bit and then change direction
  int level = 1; //this is the level of the game which would increase as the user succeeds on each level.
 
 People(float centerX, float centerY, float headsize, float torsoLength, float LegLength) {//the totalNumber would increase as the game level increase
   this.headsize = headsize;
   this.torsoLength = torsoLength;
   this.legLength = legLength;
   this.centerX = centerX;//head position x
   this.centerY = centerY;//head position y
   this.position = new PVector(random(width), random(height));//change this to "WITHIN PLATFORM"
   this.velocity = new PVector(random(-0.5,0.5), random(-0.5,0.5));//velocity will be small -> people move around   
 }

void display() { //method for diplaying people on the platform
    pushMatrix();
    translate(centerX,centerY);
    ellipseMode(CENTER);
    ellipse(centerX, centerY, headsize,headsize);
    line(centerX, centerY + headsize, centerX, centerY + headsize + torsoLength);
    line(centerX, centerY + headsize + torsoLength, centerX - 5
    
     }
  
void changeDirection() { //method for making people move on the platform
    
    
  }
  
void shout() { //method for making people speak 
    
  }