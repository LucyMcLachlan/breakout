//lucy mclachlan
//breakout 1-4

//mode variables
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;
// color variables
color orange=#D18C5F;
color brown=#7C5421;
color yellow=#DCC73D;
color green=#ACAB64;
color clay=#B77F6E;
color white=#FFFFFF;
color black=#000000;
//font
PFont western;
//score
int score=0;
int lives=3;
int timer=100;
//images
PImage hay;
//padle var
float px, py, pd;
//ball var
float bx, by, bd;
float vx, vy;
//keyboard var
boolean akey, dkey;
//brick var
int[] x; //array of x coordinates
int[] y; //array of y coordinaties
int n; // # of elements in array
int brickd; // diameter of the bricks
void setup() {
  size(800, 600);
  mode=INTRO;
  western=createFont("WOODCUT.TTF", 1);
  textAlign(CENTER, CENTER);
  textFont(western, 100);
  //image initialization
  hay= loadImage("hayBayle.png");
  //padle initialization
  px=width/2;
  py=height;
  pd=100;
  // ball initialization
  bx=width/2;
  by=height/2;
  bd=30;
  vx=0;
  vy=4;
  // array setup
  n=3;
  x=new int[n];
  y=new int[n];
  brickd=50;
  x[0]=100;
  y[0]=100;
  x[1]=400;
  y[1]=100;
  x[2]=700;
  y[2]=100;
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode== PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else println("mode error ="+ mode);
}
