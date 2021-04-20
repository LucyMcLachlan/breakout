void game() {
  background(clay);
  //lives counter
  fill(white);
  textSize(30);
  text("LIVES: "+lives, 120, 50);
  
  //draw paddle
  circle(px, py, pd);

  // draw ball
  circle(bx, by, bd);

  //move paddle
  if (px>pd/2+pd/6) {
    if (akey==true)px=px-9;
  }

  if (px<width-(pd/2+pd/6)) {
    if (dkey==true)px=px+9;
  }

  //move ball
  if (timer<0) {
    bx=bx+vx;
    by=by+vy;
  }

  if (by>650) {
    by=450;
    bx=400;
    timer=100;
    lives=lives-1;
  }

  if (bx<bd/2||bx>width-bd/2)vx=vx*-1;
  if (by<bd/2)vy=vy*-1;

  //paddle collisions
  if (dist(px, py, bx, by)<=pd/2+bd/2) {
    vx=(bx-px)/10;
    vy=(by-py)/10;
  }
  // draw bricks
  int i=0;
  circle(x[i],y[i],brickd);
  //timer
  timer=timer-1;

  if (lives<=0)mode=GAMEOVER;
}

void gameClicks() {
  mode=PAUSE;
}
