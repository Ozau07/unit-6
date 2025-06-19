void intro() {
  background(0);
  image(gif[f], 0, 0, width, height);
  if (frameCount %3 ==0) {
    f=f+1;
    if (f >= numberofframes) {
      f=0;
    }
  }
  textSize(50);

  text("Click Anywhere To Start", 150, 600);
}
void introClicks() {

  if (clickedOnRect(0, 0, 800, 800)) {
    mode = GAME;
  }
}
