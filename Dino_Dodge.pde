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
void keyPressed() {

  //to make jump happen
  if (d1.getY() == 170) {
    d1.setA(-.35);
  }

} 