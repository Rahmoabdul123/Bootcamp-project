class Ball
{
  float x, y;                   // Ball position.
  float diameter;               // Ball diameter.
  color colour;                 // Ball colour.
 
 float dx,dy;                  // Movement increments.

  // Constructor - this is called whenever a new ball is created.
  Ball()
  {
    // Initialise the state of the ball with some random values.
    diameter = random(10,50);
    x = random(diameter, width-diameter);
    y = random(diameter, height-diameter);
    colour = color(random(170,200), random(255,255), random(190,250));
    dx = random(3,4);
    dy = random(-6,8);
  }
 
  void draw()
  {
    strokeWeight (1);
    fill(colour);
    circle(x, y, diameter);
  }
void move()
{
  // Make balls bounce off edge.
  if (x <= diameter/2) dx = abs(dx);
  if (y <= diameter/2) dy = abs(dy);
  if (x >= width-diameter/2) dx = -abs(dx);
  if (y >= height-diameter/2) dy = -abs(dy);
 
  x = x+dx;
  y = y+dy;
}
}
