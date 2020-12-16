class LevelTwo {
  String currentLevel = "Level2"; 
  float duration;
  
  LevelTwo(float duration) {
    this.duration = duration;    
  }
   
void gameStart(){ //start the game
      for(int i =0; i<8; i++) {
    level2[i].display(); //display stick figures
    level2[i].move(); //moving stick figures
    level2[i].changeDirection(); //stick figures changes direction
    level2[i].complexMovement(); //stick figures makes complex movements
    timer2.tick(); //timer restarts with longer duration
    platform.play(); //soundfile resumes from level1
    platform.loop();
}
}


void youWin() {// 
         if((level2[0].position.x < 375) && (level2[0].position.x > 225) && (level2[0].position.y < 185) && (level2[0].position.y > 65)
        && (level2[1].position.x < 375) && (level2[1].position.x > 225) && (level2[1].position.y < 185) && (level2[1].position.y > 65)
        && (level2[2].position.x < 375) && (level2[2].position.x > 225) && (level2[2].position.y < 185) && (level2[2].position.y > 65)
        && (level2[3].position.x < 375) && (level2[3].position.x > 225) && (level2[3].position.y < 185) && (level2[3].position.y > 65)
        && (level2[4].position.x < 375) && (level2[4].position.x > 225) && (level2[4].position.y < 185) && (level2[4].position.y > 65)
        && (level2[5].position.x < 375) && (level2[5].position.x > 225) && (level2[5].position.y < 185) && (level2[5].position.y > 65)
        && (level2[6].position.x < 375) && (level2[6].position.x > 225) && (level2[6].position.y < 185) && (level2[6].position.y > 65) 
        && (level2[7].position.x < 375) && (level2[7].position.x > 225) && (level2[7].position.y < 185) && (level2[7].position.y > 65)         
        ) { 
        //1. the timer stops
        //2. text appears that you have won the game
       print("level 2 accomplished"); //check phrase
     
      } else {
        endGame();
      }
}

void endGame() {
  if(timer.runOut() == true) {
    print("The Game has ended");
    text("Train has already left!",300,400);


}
}
}
    
