void keyPressed()
{
  if (keyCode == UP )
  {
    xrate[0] = 0;
    yrate[0] = -10;
  }
  if (keyCode == DOWN)
  {
    xrate[0] = 0;
    yrate[0] = 10;
  }
  if (keyCode == LEFT)
  {
    xrate[0] = -10;
    yrate[0] = 0;
  }
  if (keyCode == RIGHT)
  {
    xrate[0] =10;
    yrate[0] = 0;
  }
  if (keyCode == ENTER)
  {
      setup();
      gamestate = 0;
  }
}
