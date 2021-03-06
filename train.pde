class Train {
  float windowWidth = 180; //width of the window
  float windowHeight = 60; //height of the window
  float doorWidth; //width of the center door
  float doorHeight;// height of the center door
  float trainHeight = 150;// height of the entire train
  float trainWidth = 600;// width of the entire train


  Train(float doorWidth, float doorHeight) { //door width and height will be adjustable based on the game level
    this.doorWidth = doorWidth; //default 150
    this.doorHeight = doorHeight;//default 120    
  }

void display() {
  line(0,50, trainWidth,50); //subway top line
  line(0,50 + trainHeight, trainWidth, 50 + trainHeight);//subway bottom line
  rectMode(CENTER);
  //fill(255,237, 131);
  rect(300,125,doorWidth,doorHeight,10); //the main door
  rect(110, 100, windowWidth, windowHeight, 20); //left window
  rect(490, 100, windowWidth,windowHeight, 20); //right window
  //fill(255,255,255);
  
  
}




void doorOpens() { //this method will animate the train door opening
  
  
}

void doorShut() { //this method will animate the train door closing
  
}


void enterPlatform() { //this method will animate the train entering the platform
  
}

void leavePlatform() {// this method will animate the train leaving the platform
  
}

}
