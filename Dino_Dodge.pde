// global variables (can be used everywhere below)
float gravity;   // gravity
float distance;  // tracks distance

Cactus c1; // makes first cactus
Dino d1;   // makes first dino




// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

  // Create cactus instance 
  c1= new Cactus(900, -.1, -1);


  //create and initalizes the dino object
  d1= new Dino(0, 170, 0);
}

  // this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);

  c1.update(gravity);
  d1.update(gravity);

  //status updates
  fill(0);
  textSize(12);
  //text("dinoY is" + dinoY, 150, 25);
  //text("dinoS is" + dinoS, 150, 50);
  //text("dinoA is" + dinoA, 150, 75);
  //text("distance is" + distance, 150, 100);

  //determine whether there is a hit
  //        dino - cactus
  //float a = dinoY - 175;
  //float b = 50 - x1;
  //distance = sqrt(pow(a, 2) + pow(b, 2)   );

  ////determine whether there is a hit 
  //if (distance < (30 +25)) {
  //  textSize(80);
  //  text("GAME OVER", 100, 100);
  //  noLoop();
  //}





  // set gravity
  gravity = 0.025;
}

// respond to keypress 
//void keyPressed() {

//only jump when on the ground
//if (dinoY>=170) {
//Jump
// dinoA = -0.5;
//}
//} 