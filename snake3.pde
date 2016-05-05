
int tip;
int tiprate;
int snakelength;
PImage img;
int[] snakex = new int[500];
int[] snakey = new int[500];
int[] xrate = new int[2];
int[] yrate = new int[2];
int gametime;
int foodx = 0;
int foody = 0;
int points;

int killsnake;
int[] killx = new int[500];
int[] killy = new int[500];
void setup()
{
   size(500,500);
  frameRate(13); 
  snakex[0] = 250; // otherwise game ends
  snakey[0] = 250;
  foodx = (floor(random(40))+2)*10;
  foody = (floor(random(40))+2)*10;
}


void draw()
{
}
