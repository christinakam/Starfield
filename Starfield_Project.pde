int partSize = 7;
int alienSize = 10;
int numParts = 100;
ArrayList <Particle> parts = new ArrayList <Particle> ();
Oddball aliens = new Oddball();
void setup () {
  noStroke();
  size(500, 500);
  background(0);
  for (int i = 0; i < numParts; i ++) {
    parts.add(new Particle());
  }
  parts.add(aliens);
}

void draw() {
  background(0);
  parts.add(new Particle());
  for (int i = 0; i< parts.size(); i++) {
    parts.get(i).move();
    parts.get(i).show();
  }
}
