class Timer {
  float timeleft;//remaining time in the game
  float interval; 
  String tt;//timer text
  String first = "Time Remaining:  ";
  String last = "Time Left:  ";

Timer(float interval) {
     this.interval = interval; //starting time given in the game
   }
      
 void levelUp() { //this method is used when game levels up
   interval += 5;//with every level 5 more seconds will be given due to increased difficulty
 } 
  void tick() { //this method is used to countdown the timer
    timeleft = interval - int(millis()/1000);
    if (timeleft > 0) { //conditional to make the timer stop once it hits 0.
    timeleft = interval - int(millis()/1000);
    } else {
      timeleft = 0;
    }
    fill(0,0,0);
    String tt  = str(timeleft);
    PFont f = createFont("Arial",  10);
    textFont(f);
    textSize(20);
    String full = first + tt;
    text(full,100,30);
  }
 boolean runOut() {
   if(timeleft == 0){
      return true;
   } else{
     return false;
   }
}

}
