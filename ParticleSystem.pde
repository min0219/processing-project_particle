class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;  
  PImage[] butter;

  ParticleSystem(PVector position, PImage[] imglist) {
    origin = position.copy();
    butter = imglist;
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(origin, butter[int(random(0,3))], int(random(0, 4)) ));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
  
  
}
