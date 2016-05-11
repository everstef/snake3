
int tip;
int tiprate;
int snakelength;
PImage img;
int[] snakex = new int[500];
int[] snakey = new int [500];
int[]xrate = new int[3];
int[] yrate = new int[3];
int gamestate;
int foodx = 0;
int foody = 0;
int points;
int killsnake;
int[] killx = new int[500 ];
int[] killy = new int[500];
void setup()
{
   size(500,500);
  frameRate(14); 
  snakex[0] = 250; // otherwise game ends
  snakey[0] = 250;
  foodx = (floor(random(40))+2)*10;
  foody = (floor(random(40))+2)*10;
}
void draw()
{
  if (gamestate == 0)
  {
  img = loadImage("12345.jpg");
  image(img,0,0);
     
    for (int count = snakelength; count >= 0; count--) //draw
    {
      if (count > 0)
      { 
          {
           fill( random(255), random(255), random(255), random(255)); 
          }
      // drawing snake moves x/y to next
        snakex[count] = snakex[count-1];
        snakey[count]= snakey[count- 1];
        // new calc pos
        rect(snakex[count],snakey[count], 10, 10);
      }
      else 
      {
        fill(0); //head
        snakex[count] += xrate[count]; // move xy pos
        snakey[count] += yrate[count];
       // head new pos
        rect(snakex[count]+1,snakey[count],10+tip,10+tip); //draw at new pos
       {
        }   
  {
        noStroke();
         fill( random(255), random(255), random(255), random(255)); 
      }
       
      {
        if (snakex[0] == killx[count] && snakey[0] == killy[count]) // is snake kill
        {
          gamestate = 1; 
        }
      }
    }
    if (snakex[0] >= 500 || snakex[0] <= 0 || snakey[0] >= 500 || snakey[0] <= 0)
    {
      gamestate = 1;
    }
    
    if (snakex[0] == foodx && snakey[0] == foody) // snake eat
    
    {
      snakelength++;   
      points++;
      foodx = (floor(random(49))+1)*10;
      foody = (floor(random(49))+1)*10;
    }
    { 
    ellipse(foodx,foody,10,10);
    fill( random(255), random(255), random(255), random(255)); 
  }
    }
  }
  else // If game is over.
  {
    background(0);
    text("FINAL SCORE: " + points, 50,325);
    fill(255);
    text("PRESS ENTER TO RESTART", 50,275);
    fill(255);
     snakelength = 0;
  }
}

