import processing.sound.*; //importing the sound library
SoundFile subwayEnter; // this sound of subway entering the platform will be used before game begins
SoundFile platform;
LevelOne levelone;
LevelTwo leveltwo;

Train train; //train instance
Timer timer; //timer instances
Timer timer2;
Timer timer3;
Timer timer4;
Timer timer5;
int currentfigures = 5; //variable to keep track of current figures
int currentgameLevel = 1;//variable to keep track of current level
String levelName = "level" + str(currentgameLevel); //string to display current level
String win = "No one has missed the train. Good job!";//a win message

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
  subwayEnter = new SoundFile(this, "subway1.mp3"); //subway entering soundfile
  platform = new SoundFile(this, "platform ambience.mp3");
  
  levelone = new LevelOne(50);
  leveltwo = new LevelTwo(40d);
  timer = new Timer(20);// level1 timer
  timer2 = new Timer(25); //level2 timer
  timer3 = new Timer(20); //level3 timer
  timer4 = new Timer(15);//level4 timer
  timer5 = new Timer(10);// level5 timer
    
 for (int i =0; i <5; i++) { //setting up level1 figures
    level1[i] = new People(30, 20);
}
 for (int i =0; i <8; i++) { //setting up level2 figures//smaller head
    level2[i] = new People(25, 20);
}
 for (int i =0; i <11; i++) { //setting up level3 figures//smaller head, longer torso
    level3[i] = new People(22, 20);
}
 for (int i =0; i <14; i++) { //setting up level4 figures//smaller head
    level4[i] = new People(20, 20);
}
 for (int i =0; i <17; i++) { //setting up level5 figures//smaller head
    level5[i] = new People(18, 20);
}

  train = new Train(150, 120); //setting up the train
}

void draw() {
  train.display();
  levelone.gameStart();
  levelone.youWin();
  levelone.endGame();
}

void mouseDragged() {
   for(int i =0; i<5; i++) {
    level1[i].caughtByMouse();
} 
 for(int i =0; i<8; i++) {
    level2[i].caughtByMouse();
}  
 for(int i =0; i<11; i++) {
    level3[i].caughtByMouse();
}  
 for(int i =0; i<14; i++) {
    level4[i].caughtByMouse();
}  
 for(int i =0; i<17; i++) {
    level5[i].caughtByMouse();
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
  
