Snowflake [] squad;
void setup()
{
  background(0, 193, 247);
  size(400, 400);
  squad = new Snowflake[30];
  for (int i = 0; i < squad.length; i++) {

    squad[i] = new Snowflake();
  }
  //your code here
}
void draw()
{
  for (int i = 0; i < squad.length; i++) {
    squad[i].erase();
    squad[i].lookDown();
    squad[i].move();
    squad[i].wrap();
    squad[i].show();
  }

  // REMEMBER TO COMMENT THIS OUT BELOW BEFORE YOU SUBMIT YOUR PROJECT!!
 // println(mouseX, mouseY);
  //your code here
}

void mouseDragged()
{
  noStroke();
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, 15, 15);
  //your code here
}

class Snowflake
{ 
  // int myX, myY;
  int iceX, iceY, iceSize;
  boolean isMoving;
  //class member variable declarations
  Snowflake()
  {
    // myX = (int)(Math.random()*600)+1;
    //myY = (int)(Math.random()*400)+1;
    iceX = (int)(Math.random()*400)+10;
    iceY = (int)(Math.random()*400)+1;
    iceSize = 20;
    isMoving = true;
    //class member variable initializations
  }
  void show()
  {
     //your code here
    //cone
    stroke(188, 112, 5);
    fill(255, 237, 135);
    //    arc(50, 55, 70, 70, HALF_PI *3, PI);
    triangle(iceX-9, iceY+20, iceX+10, iceY, iceX+2, iceY+50);
    noStroke();
    fill(255, 198, 254);
    ellipse(iceX, iceY, iceSize, iceSize+5);
    fill(170, 113, 0);
    ellipse(iceX, iceY+10, iceSize, iceSize);
    fill(244, 249, 217);
    ellipse(iceX, iceY+20, iceSize, iceSize);
    fill(255, 0, 0);
    ellipse(iceX, iceY-10, iceSize/2, iceSize/2);
    stroke(0);
    line(iceX, iceY-10, iceX, iceY-20);
    // isMoving = true;
  }
  void lookDown()
  {
    //your code here
    if (get(iceX, iceY+50) == color(0, 0, 255)) {

      isMoving = false;
    }
    //isMoving = true;
    //  if (myX= <= 750 && myX >= 0 && myY >= 0 && myY <= 420) {
    //if (iceX <= 750 || iceX >= 0 || iceY >= 0 && iceY <= 420) {
    //isMoving = true;
    //} else {
    //isMoving = false;
  }
  void erase()
  {
    noStroke();
    //stroke(0,193,247);
    fill(0, 193, 247);
    ellipse(iceX, iceY, iceSize+4, iceSize+20);
    //your code here
  }
  void move()
  {
    if (isMoving == true) {
      //myY++;
      iceY++;
    }
  }
  //your code here

void wrap()
{
  if (iceY == 415) {
    //  myY=-10;
    iceY = -30;
    iceX = (int)(Math.random()*400)+1;
  }


  //your code here
}
}
