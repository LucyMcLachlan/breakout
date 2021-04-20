void game() {
  background(clay);

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
  
  //moveball
}

void gameClicks() {
  mode=PAUSE;
}
