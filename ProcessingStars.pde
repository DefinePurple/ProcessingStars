void setup(){
  size(600,600);
  //sets the background colour to white
  background(255);
}


void draw(){
  //creates a new star with random amount of points.
  Star drawing = new Star((int)random(6,50));
  //draws the star
  drawing.drawStar();
  //remove "//" from the following to slow the program down.
  //delay(700);
}//end draw