int limit = 400;

public void setup()
{
  size(500, 500);
  background(0, 0, 0);
}
public void draw()
{
  background(0, 0, 0);
  sierpinski(55, 425, limit);
}
public void mouseDragged()//optional
{
  if (mouseX < 1)
  {
    limit = 1;
  }
  else
  {
    limit = mouseX;
  }
}
public void sierpinski(int x, int y, int len) 
{
   if (len <= 20)
   {
      triangle(x, y, x + len/2, y - len, x + len, y);
   }
   else
   {
     sierpinski(x, y, len/2);
     sierpinski(x + len/2, y, len/2);
     sierpinski(x + len/4, y - len/2, len/2);
   }
}
