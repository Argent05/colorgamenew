void intro() {
 GAME.play();
  
  counter = counter +1;
  image(gif[f],0,0,width,height);
  f=f+1;
 if ( f == frames) f = 0;
  textFont(Baby);

if (counter % 5 == 0){
  fill(0);
  textSize(100);
  text("Color Game",width/2,height/2);
   
}else{
  fill(255);
  textSize(100);
  text("Color Game",width/2,height/2);
}


  fill(255);
  touchingCircle(650,650,100);
  circle(650,650,100);
  textFont(October);
  fill(0);
  textSize(100);
  text("Next",647,643);
  
}

void introClicks(){
  if (dist(mouseX, mouseY,650,650)<50){
  mode= game;
  }
}
