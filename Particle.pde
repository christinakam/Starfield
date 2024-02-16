class Particle {
  double x, y, spd, ang, sz;
  float r, g, b, a;
  int partColor;

  Particle() {
    x = width/2;
    y = height/2;
    ang = Math.random()*2*Math.PI;
    spd = Math.random()*5;
    r = (float)Math.random()*256;
    g = (float)Math.random()*256;
    b = (float)Math.random()*256;
    System.out.println(ang);
    System.out.println(spd);
  }

  void move() {
    x += spd*(Math.cos(ang));
    y += spd*(Math.sin(ang));
    a += spd;
    a = map(pow(((float)x-width/2), 2)+ pow(((float)y-height/2), 2), 0, pow((width/2), 2) + pow((height/2), 2), 0, 255);
    //a = map(x-width/2), 2)+ pow(((float)y-height/2), 2), 0, pow((width/2), 2) + pow((height/2), 2), 0, 255);
  }

  void show() {
    fill(r, g, b, a);
    ellipse((float)x, (float)y, partSize, partSize);
  }
}
