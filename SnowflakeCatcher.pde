Snowflake [] bob;
void setup()
{
  bob = new Snowflake[200];
  for (int i = 0; i< bob.length; i++)
    {
      bob[i] = new Snowflake();
    }
  size(300, 300);
  background(0);
}
void draw()
{
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].lookDown();
    bob[i].erase();
    bob[i].move();
    bob[i].wrap();
    bob[i].show();
  }
}
void mouseDragged()
{
  ellipse(mouseX, mouseY, 10, 10);
}

class Snowflake
{
  int x, y, r;
  boolean b = true;
  Snowflake()
  {
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    b = true;
    r = (int)(Math.random()*10-6);
  }
  void show()
  {
    fill(255);
    noStroke();
    ellipse(x, y, 5, 5);
  }
  void lookDown()
  {
    if (get(x, y+4) != color(0))
      b = false;
    else if (get(x, y+4) == color(255, 255, 255))
      b = true;
    else  
      b = true;

  }
  void erase()
  {
    fill(0);
    ellipse (x, y, 8, 8); 
  }
  void move()
  {
    if ( b == true){
      y ++;
    }
  }
  void wrap()
  {
    if ( y > 300)
    {
      y = 0;
      x = (int)(Math.random()*300);
    }
  }
}


