Ball[] balls; // Declare an array of ball objects.

int range ;
void setup()
{
  size(700, 500);
  balls = new Ball[70];
  for (int i=0; i<balls.length; i++)
  {
    balls[i] = new Ball();
  }

  range= 50;
  keyPressed();
}

void draw()
{
  background(#85B9E3); // Pale background.
  for (Ball ball : balls)
  {
    ball.draw();
    ball.move();
  }
}

void keyPressed() {
  if (key=='r') {
    for (Ball b : balls) {
      b.colour= color(#FF1212);
    }
  }
  if (key=='a') {
    for (Ball b : balls) {
      b.colour = color(#85B9E3aa);
    }
  }

  if (key=='t') {
    for (Ball b : balls) {
      b.colour = color(#E3DD67);
    }
  }
}

void keyReleased()
{
  if (key=='r') {
    for (Ball b : balls) {
      b.colour=color(random(170, 200), random(255, 255), random(190, 250));
    }
  }
  if (key=='a') {
    for (Ball b : balls) {
      b.colour = color(#501742);
    }
  }

  if (key=='t') {
    for (Ball b : balls) {
      b.colour = color(#FF29CA);
    }
  }

  if (key=='1') {
    range +=20;
    for (Ball b : balls) {
      b.diameter= random(30, range );
    }
  }
  if (key=='0') {
    range -=20;
    for (Ball b : balls) {
      b.diameter= random(30, range );
    }
    }  
  }
