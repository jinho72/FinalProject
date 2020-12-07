Train train;
Timer timer;
int currentfigures = 5;
int currentgameLevel = 1;
String levelName = "level" + str(currentgameLevel);
String win = "No one has missed the train. Good job!";

People[] level1 = new People[5];//stick figures for level 1//currentgameLevel * 3 + 2
People[] level2 = new People[8];//stick figures for level 2
People[] level3 = new People[11];//stick figures for level 3
People[] level4 = new People[14];//stick figures for level 4
People[] level5 = new People[17];//stick figures for level 5

float lightflickerfactor = 0.5; //this is the value that light flicker value will be factored to

public void settings() {
  size(600,500);  
}

void setup() {
  timer = new Timer(10);// setting up the timer
  
  for (int i =0; i <5; i++) { //setting up array of figures
    level1[i] = new People(30, 20);
}

  train = new Train(150, 120); //setting up the train
}

void draw() {

  lightsflicker();
  timer.tick();

  line(0,50, 600,50); //subway top line
  line(0,200, 600,200);//subway bottom line
  rectMode(CENTER);
  fill(255,237, 131);
  rect(300,125,150,120,10); //the main door
  rect(110, 100, 180, 60, 20); //left window
  rect(490, 100, 180,60, 20); //right window
  fill(255,255,255);
  



  for(int i =0; i<5; i++) {
    level1[i].display();
    level1[i].move();
    level1[i].changeDirection();
    level1[i].complexMovement();
}

startScreen();
youWin();
endGame();

}


void mouseDragged() {
   for(int i =0; i<5; i++) {
    level1[i].caughtByMouse();
}
  
     
}


void lightsflicker() { //this function is to make the platform lights flicker (to increase the difficulty of the game)
 
 for(int i = 100; i < 500; i ++) { //this is to make the period in which the lights are out gets extended
     if (frameCount % i == 0) {
             background(0,0,0);
           }else {
             background(255,255,255);
            }    
 }

}
  

void startScreen() {
  textAlign(CENTER);
  textSize(20);
  fill(255,0,0);
  text("Subway is here! Get people in!", width/2, height/2);  
    
}



void youWin() {// 
      if((level1[0].position.x < 375) && (level1[0].position.x > 225) && (level1[0].position.y < 185) && (level1[0].position.y > 65)
        && (level1[1].position.x < 375) && (level1[1].position.x > 225) && (level1[1].position.y < 185) && (level1[1].position.y > 65)
        && (level1[2].position.x < 375) && (level1[2].position.x > 225) && (level1[2].position.y < 185) && (level1[2].position.y > 65)
        && (level1[3].position.x < 375) && (level1[3].position.x > 225) && (level1[3].position.y < 185) && (level1[3].position.y > 65)
        && (level1[4].position.x < 375) && (level1[4].position.x > 225) && (level1[4].position.y < 185) && (level1[4].position.y > 65)) { 
        //1. the timer stops
        //2. text appears that you have won the game
 
       text(win, 300, 100);
       
    
      } else {
        endGame();
      }
}

    
  
 

void endGame() {  
 timer.runOut(); 
}
    
    
