
class Particle {
  
  int size;
  PVector originalLocation;
  PVector location;
  PVector velocity;
  color particleColor;
  
  Particle(int _locX, int _locY, int _size, color _particleColor) {
    location = new PVector(_locX, _locY);
    originalLocation = new PVector(_locX, _locY);
    velocity = new PVector(random(-0.2, 0.2), random(-0.2, 0.2));
    size = _size;
    particleColor = _particleColor;
  }
  
  void drawParticle() {
    fill(particleColor);
    noStroke();
    ellipse(location.x, location.y, size, size);
  }
  
  void updateLocation() {
    location.add(velocity);
  }
  
  void setOriginalLocation() {
    location.set(originalLocation);
  }
  
  void setVelocity() {
    velocity.set(random(-0.2, 0.2), random(-0.2, 0.2));
  }
  
  
  // RETURN METHODS
  int getSize() {
    return size;
  }
  
  PVector getLocation() {
    return location;
  }
  
}