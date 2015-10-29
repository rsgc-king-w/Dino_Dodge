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
    dinoS= dinoS + dinoA; // changes speed based on acceleraton
    dinoY= dinoY + dinoS; // changes location based on speed

    // draw the dino
    ellipse(50, dinoY, 50, 50);

    //stop the dino if it hits the ground
    if (dinoY > 170) {// bottom of the screen (200) minus the radius (30)
      dinoS= 0;
      dinoA= 0;
      dinoY= 170;
    }

    //status updates
    fill(0);
    textSize(12);
    text("dinoY is" + dinoY, 150, 25);
    text("dinoS is" + dinoS, 150, 50);
    text("dinoA is" + dinoA, 150, 75);
    text("distance is" + distance, 150, 100);
  }

  void setA(float newA_) {
    dinoA = newA_;
  }

  // Purpose: an accessor method; lets us find out where the dino is (vertically)
  float getY() {
    return dinoY;
  }
}