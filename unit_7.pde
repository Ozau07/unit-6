PImage[] gif;
int numberofframes;
boolean rightkey, leftkey;
int[] x;
int[] y;
boolean[] alive;
int brickd;
int n;
int f;
int tempx, tempy;
PFont goodjob;
float paddlex, paddley;
float paddlewidth, paddleheight;
float paddlespeed;
float ballx, bally;
float balldiameter=20;
float speedx=5;
float speedy=5;
color red  =color(206, 24, 54);

color yellow =color(237, 185, 46);
color orange=#FFB350;
color green=#83B8AA;
color blue=#272D4D;


int mode;
final int INTRO =1;
final int GAME =2;
final int PAUSE =3;
final int GAMEOVER=4;
int live;
float a;
float bx, by, bd, vx, vy, px, py, pd;
boolean akey, dkey;
boolean clickedOnRect(int x, int y, int w, int h) {
  return (mouseX>=x&&mouseX<=x+w&&mouseY>=y&&mouseY<=y+h);
}
void setup() {
  size(800, 800);
  tempx=tempy =100;
  brickd=50;
  n=28;
  ballx=width/2;
  bally=height/2;
  live=0;
  x=new int[n];
  y=new int[n];
  alive = new boolean[n];
  leftkey=rightkey=false;
  paddlewidth=100;
  paddleheight=20;
  paddlex=width/2-paddlewidth/2;
  paddley=height-30;
  paddlespeed=5;
  mode=INTRO;
  f = 0;
  int i=0;
  while (i<n) {
    x[i]=tempx;
    y[i]=tempy;
    alive[i] =true;
    tempx=tempx+100;
    if (tempx>=width) {
      tempx=100;
      tempy=tempy+100;
      numberofframes = 23;
    }
    i=i+1;
  }
  i = 0;
  gif = new PImage[numberofframes];
  while (i<numberofframes) {
    gif[i]=loadImage("frame_0"+i+"_delay-0.04s.gif");
    i=i+1;
    
  }
}

  void draw() {
    if (mode==INTRO) {
      intro();
    } else if (mode==GAME) {
      game();
    } else if (mode==PAUSE) {
      pause();
    } else if (mode==GAMEOVER) {
      gameover();
    } else {
      println("Mode error:" + mode);
    }
  }
