class LevelOne {
  String currentLevel = "Level1";
  float duration;
  
  LevelOne(float duration) {
    this.duration = duration;    
  }
   
void gameStart(){ //start the game
  if(key == ' ') { //when the space bar is pressed, game starts
      for(int i =0; i<5; i++) {
    level1[i].display(); //display stick figures
    level1[i].move(); //moving stick figures
    level1[i].changeDirection(); //stick figures changes direction
    level1[i].complexMovement(); //stick figures makes complex movements
    timer.tick(); //timer starts
    subwayEnter.stop(); 
    platform.play(); //new sound file played when game starts
    platform.loop();
}
  }else {//else it will remain in the start screen
    PFont p = createFont("SF Pro", 30); 
    fill(122,122,122);
    textFont(p);
    textSize(80);  
    text("Subway Rush", 300, 50); //game title displayed
    textSize(15);
    text("Press Spacebar to start", 300, 300); //instruction displayed
    textAlign(CENTER);
    textSize(20);
    fill(255,0,0);
    text("Subway is here! Get people in!", width/2, height/2); //subtitle displayed
    subwayEnter.play();
    subwayEnter.amp(0.03); //changing the volume and rate of the soundfile due to distortion when added to the sketch
    subwayEnter.rate(0.3); 
    subwayEnter.loop(); // loops the file until the game starts
 }
}


void youWin() {)        && (level1[1].position.x < 375) && (level1[1].position.x > 225) && (level1[1].position.y < 185) && (level1[1].position.y > 65)
        && (levl1[2].position.x < 375) && (level1[2].position.x > 225) && (level1[2].position.y < 185) && (level1[2].position.y > 65)
        && (level1[3].position.x < 375) && (level1[3].position.x > 225) && (level1[3].position.y < 185) && (level1[3].position.y > 65)
        && (level1[4].position.x < 375) && (level1[4].position.x > 225) && (level1[4].position.y < 185) && (level1[4].position.y > 65)) { 
        //1. the timer stops
        //2. text appears that you have won the game
  
       platform.jump(0); //the sound file plays from the beginning
       
       leveltwo.gameStart();
       leveltwo.youWin();
       leveltwo.endGame();
     
      } else {
        endGame();
      }
}

void endGame() {
  if(timer.runOut() == true) {
    print("The Game has ended");
    text("Train has already left!",300,400);
    //setup();


}
}
}
    
    
    
