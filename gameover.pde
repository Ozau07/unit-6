void gameover(){
  background(255,0,0);
  textSize(50);
  fill(255);
  textSize(30);
text("Click To Play Again", width/2, height/2+100);
}

void gameoverClicks(){
  mode=INTRO;
}
