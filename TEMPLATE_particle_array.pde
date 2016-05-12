

//Declare Global Objects
Particle particle;

// initalize particle array
ArrayList<Particle> particleArray = new ArrayList<Particle>();


// init global variables
int numberOfRows = 5; // how many particles to be draw per row/column (Make %)
int particleSize = 25; // the size of each particle
color particleColor = color(0);

// Insert variables for effects



void setup() {
  size(800, 800);
  background(255);
  
  int locX = width/numberOfRows; // where the first particle is drawn
  int locY = height/numberOfRows; // very important for looops
  
  //create a particle list based on how many rows you want vs. width/height
  for (int i = 0; i < numberOfRows - 1; i++) {
    
    // this for loop loops once per row of particles
    for (int j = 0; j < numberOfRows - 1; j++) { 

      particleArray.add(new Particle(locX, locY, particleSize, particleColor));
      locX += width/numberOfRows;
    }
    locX = width/numberOfRows;
    locY += height/numberOfRows;
  }
}


void draw() {
  background(255);
  
  for (int i = 0; i < particleArray.size(); i++) {
    particleArray.get(i).setOriginalLocation();
    particleArray.get(i).setVelocity();
    particleArray.get(i).drawParticle();
      
  }
    
}