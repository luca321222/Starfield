Particle[] parts = new Particle[500];
void setup()
{
  size(500, 500);
  noStroke();
  for (int i = 0; i < 5; i++)
  {
    parts[i] = new Oddball();
  }
  for (int i = 5; i < parts.length; i++)
  {
    parts[i] = new Particle();
  }
}
void draw()
{
  translate(250, 250);
  background(0);
  for (int i = 0; i < parts.length; i++)
  {
    parts[i].show();
    parts[i].move();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX = Math.cos(myAngle)*mySpeed;
    myY = Math.sin(myAngle)*mySpeed;
    myAngle = Math.random()*(2*Math.PI);
    mySpeed = Math.random()*11;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
  void move()
  {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
}
class Oddball extends Particle
{
  Oddball()
  {
    myX = Math.cos(myAngle)*mySpeed;
    myY = Math.sin(myAngle)*mySpeed;
    myAngle = Math.random()*(2*Math.PI);
    mySpeed = Math.random()*6;
    myColor = color(227, 222, 211);
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 70, 70);
  }
  void move()
  {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
}
