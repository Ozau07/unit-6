void game() {
  background(0);
  fill(255);
  circle(px, py, pd);
  if (akey)px=px-5;
  if (dkey)px=px+5;
  fill(255);
  circle(bx, by, bd);
  bx=bx+vx;
  by=by+vy;
  if (dist(bx, by, px, py)<bd/2+pd/2) {
    vx=(bx-px)/10;
    vy=(by-py)/10;
  }
  if (by<bd/2||by>height-bd/2) {
    vy=vy*-1;
  }


  int i=0;
  while (i<n) {
    if (alive[i] == true) {

      mangeBrick(i);
    }
    i++;
  }
  fill(255);
  rect(paddlex, paddley, paddlewidth, paddleheight);
  if (leftkey && paddlex >0) {
    paddlex-=paddlespeed;
  }
  if (rightkey && paddlex < width-paddlewidth) {
    paddlex+=paddlespeed;
  }
  if (bx>paddlex&&bx<paddlex+paddlewidth&&by+bd/2>paddley)
  {
    vy=-vy;
    bx+=vx;
    by+=vy;
  }
  fill(255);
  ellipse(ballx, bally, balldiameter, balldiameter);
  ballx+=speedx;
  bally+=speedy;
  if (ballx<0||ballx>width) {
    speedx*=-1;
  }
  if (bally<0||bally>height) {
    speedy*=-1;
  }
  if (bally+balldiameter/2>paddley&&ballx>paddlex&&ballx<paddlex+paddlewidth) {
    speedy*=-1;
  }

}

void gameClicks() {
}

void mangeBrick(int i) {
  if (y[i] ==100) fill(red);
  if (y[i] ==200) fill(orange);
  if (y[i] ==300) fill(yellow);
  if (y[i] ==400) fill(green);
  circle(x[i], y[i], brickd);
  if (dist(bx, by, x[i], y[i])<bd/2+brickd/2) {
    vx=(bx-x[i])/10;
    vy=(by-y[i])/10;
  }
  i++;
}
