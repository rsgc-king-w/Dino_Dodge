// global variables (can be used everywhere below)
float x1;    // tracks horizontal position of first cactus
float s1;    // speed for first cactus
float a1;    // acceleration for first cactus
float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino
float gravity;   // gravity
float distance;  // tracks distance 
// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

  // set the initial position of the cactus
  x1 = 900; // position it off-screen on the right

  // set the intial acceleration
  a1 = -0.1;

  // set the initial speed
  s1 = -1;

  // set dino initial vertical position
  dinoY = 170;

  // set dino's initial speed
  dinoS = 0;

  // set dino's initial acceleration
  dinoA = 0 ;

  // set gravity
  gravity = 0.025;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);

  // draw a circle at bottom right corner of the screen
  //       x    y    w   h
  ellipse(x1, 175, 50, 50);

  // change the speed
  s1 = s1 + a1;

  // create the appearance of moving by changing the x position
  x1 = x1 + s1;

  // put the cactus back on the right edge if it goes off the left edge
  if (x1 < -25) {
    x1 = 900; // place off screen on right 
    s1 = -1;  // reset the speed (to avoid insanely fast movement)
  }

  //status updates
  fill(0);
  textSize(12);
  text("dinoY is" + dinoY, 150, 25);
  text("dinoS is" + dinoS, 150, 50);
  text("dinoA is" + dinoA, 150, 75);
  text("distance is" + distance, 150, 100);

  //determine whether there is a hit
  //        dino - cactus
  float a = dinoY - 175;
  float b = 50 - x1;
  distance = sqrt(pow(a, 2) + pow(b, 2)   );

  //determine whether there is a hit 
  if (distance < (30 +25)) {
    textSize(80);
    text("GAME OVER", 100, 100);
    noLoop();
  }


  //move the dino
  dinoA = dinoA + gravity; 
  dinoS = dinoS + dinoA; // change speed based on acceleration
  dinoY = dinoY + dinoS; // change location based on speed

  //stop the dino if it hits the ground
  if (dinoY > 170) {// bottom of the screen (200) minus the radius (30)
    dinoS= 0;
    dinoA= 0;
    dinoY= 170;
  }



  // draw the dino
  ellipse(50, dinoY, 50, 50);
}

// respond to keypress 
void keyPressed() {

  //only jump when on the ground
  if (dinoY>=170) {
    //Jump
    dinoA = -0.5;
   }
} 