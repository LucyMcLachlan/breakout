void gameOver() {
  background(orange);
  textSize(70);
if(lives==0){fill(white);
  text("YOU LOST", 395, 95);
  fill(brown);
  text("YOU LOST", 400, 100);}
}

void gameOverClicks(){
mode=INTRO;
lives=3;
score=0;
}
