class Dino {
  // Global Variables
  //Dino Variables
  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino

  //constructor (like setup; runs once)
  Dino(float dinoY_, float dinoA_, float dinoS_) {
    dinoY = dinoY_;
    dinoA = dinoA_;
    dinoS = dinoS_;
  }


  //update: draws thing relating to the dino
  void update(float gravity) {

    //move the dino
    dinoA = dinoA + gravity; 
    dinoS = dinoS + dinoA; // change speed based on acceleration
    dinoY = dinoY + dinoS; // change location based on speed
    
    // draw the dino
    ellipse(50, dinoY, 50, 50);

    //stop the dino if it hits the ground
    if (dinoY > 170) {// bottom of the screen (200) minus the radius (30)
      dinoS= 0;
      dinoA= 0;
      dinoY= 170;
    }
  }
}