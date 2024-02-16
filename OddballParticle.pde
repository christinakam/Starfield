class Oddball extends Particle {
  Oddball() {
    x = ((Math.random()*width));//+((1/4)*width);
    y = 250;
    partColor = color(255, 0, 0);
    //myAngle = 0 //Math.random()*2*Math.PI;
    //mySpeed = Math.random()*5;
  }

  void move() {
    x += (Math.random()*2); //mySpeedX;
    y += (Math.random()*2)-1; //mySpeedY;
  }
  
  void show() {
    fill(partColor);
    ellipse((float)x, (float)y, partSize*5, partSize*5);
  }
}
