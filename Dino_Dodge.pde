// global variables (can be used everywhere below)
int x; //tracks horizontal position of first cactus


//This function runce once only
void setup(){
  //draw canvas
  size(800,200);
  //set the inital position of the cactus
  x = 900; //position it off-screen on the right
  
}

//this function runs repetedly
void draw()  {
  //background clears each time the program loops
  background(255);
  //draw a circle at botom right corner of the screen
  //       x   y   w  h
  ellipse(x,175,50,50);
  
  //create the apperance of moving by changing the x position
  x= x-5;
  
}