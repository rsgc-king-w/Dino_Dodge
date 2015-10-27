// global variables (can be used everywhere below)
 




//General Variables
float gravity;   // gravity
float distance;  // tracks distance

Cactus c1; // makes first cactus





// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

// Create cactus instance 
  c1= new Cactus(900, -.1, -1);
  
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

c1.update(gravity);

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