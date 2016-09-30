class Star {
  float radius1, radius2, angle;
  float innerX, innerY, outerX, outerY, centerX, centerY;
  float theta;
  int amount;
  
  //constructor to construct the star
  Star(int amount0) {
    amount = amount0;
    //if the number of points is odd. make it even.
    if(amount%2 == 1)
      amount++;
    
    //chooses a random distance for each point from the center of the star
    radius1 = random(10,50); 
    radius2 = random(10,50);
    
    //chooses a random point for the center of the star. it can be anywhere on the screen.
    centerX = random(0,width);
    centerY = random(0,height);
    
    //calculates the angle for each point
    theta = 0;
    angle = (float) TWO_PI/ (float) amount;
  }//end constructor

  void drawStar() {
    //randomly generates a colour for the star
    stroke(random(200), random(200), random(200));
    
    //without this the initial sport will be 0,0 for the first point
    innerX = centerX + radius1 * cos(theta);
    innerY = centerY - radius1 * sin(theta);
    
    //increases a until it is equal to double the number of points
    for (int a=0; a<amount*2; a++) {
      theta += (float) angle;
      //every second point will swap between inner and outer 
      if(a%2 == 1){
        innerX = centerX + radius1 * cos(theta);
        innerY = centerY - radius1 * sin(theta);
      }else{
        outerX = centerX + radius2 * cos(theta);
        outerY = centerY - radius2 * sin(theta);
      }
      //draws the line
      line(innerX,innerY,outerX,outerY);
    }//end for a
  }//end drawStar
  
}//end class