void game() {
  
  //background
  background(255);
  fill(#616C55);
  rect(0, 0, width/2, height);
  line(width/2, 0, width/2, height);

  fill(255);
  textSize(80);
  textFont(October);
  text("Matches!!", width/4-40, 50);

  fill(#264653);
  textSize(80);
  text("Doesn't Match...", 640, 50);  // how to use width to divide the screen so that the text would be centered on the 3/4th part of the screen

  //moving text
  angle = angle +0.2;
  movingText(400, 400);


  //scoring
  fill(0);
  textSize(40);
  textFont(Baby);
  text("Score: " + score, width/2, 40);
  text("Highscore: " + highscore, width/2, 90);
}

void movingText(int x, int y) {
  pushMatrix();
  translate(x, y);
  rotate(angle);
  fill(colors[randomColor]);
  textSize(100);
  text(words[randomNum], 30, 30);
  popMatrix();
}

void gameClicks() {

  if (mouseX > 0 && mouseX < width/2 && mouseY >0 && mouseY <800) {
    if (randomNum == randomColor) {
     correctResult();
     win.play();
     
     win.rewind();
     
    } else {
      mode = gameover;
      GAME.pause();
      GAME.rewind();
      failure.play();
    }
  }

  if (mouseX > width/2 && mouseX < width && mouseY >0 && mouseY <800) {
    if (randomNum != randomColor) {
     correctResult();
     win.play();
     win.rewind();
    } else {
        mode=gameover;
        GAME.pause();
        GAME.rewind();
        failure.play();
    }
  }
}




void correctResult(){
   score= score+1; // whats the difference between else and else if
      randomNum = (int) random(0, 6);
      randomColor = (int) random(0, 6);
  
  
}
