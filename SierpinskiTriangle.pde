int mySize;

public void setup()
{
  size(750, 750);
}
public void draw()
{
  strokeWeight(1);
}
public void mouseMoved()//optional
{
  background(191, 227, 226);
  fill(227, 191, 192);
  if(mouseX <= 20)
    mySize = 20;
  mySize = mouseX;
  sierpinski(mySize, mySize, mySize);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) 
    triangle(x, y, x - len, y, x - len/2, y - len);
  else {
    fill(147, 223, 184);
    sierpinski(x, y, len/2);
    fill(255, 255, 159);
    sierpinski(x - len/2, y, len/2);
    fill(255, 174, 66);
    sierpinski(x - len/4, y - len/2, len/2);
  }
}
