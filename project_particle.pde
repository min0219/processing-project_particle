ParticleSystem ps;
PImage[] butterlist = new PImage[3];
PImage sky;


void setup() {
  size(1024, 768);
  butterlist[0] = (loadImage("butterfly1.png"));
  butterlist[1] = (loadImage("butterfly2.png"));
  butterlist[2] = (loadImage("butterfly3.png"));
  sky = loadImage("sky.jpg");
  ps = new ParticleSystem(new PVector(width/2, height/2), butterlist);
}

void draw() {
  background(sky);
  ps.addParticle();
  ps.run();
}

void mouseClicked(){
  saveFrame("background.png");
}
