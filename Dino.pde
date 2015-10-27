class Dino {
  // Global Variables
  //Dino Variables
  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino
  
  //constructor (like setup; runs once)
  Dino(



  //stop the dino if it hits the ground
  if (dinoY > 170) {// bottom of the screen (200) minus the radius (30)
    dinoS= 0;
    dinoA= 0;
    dinoY= 170;