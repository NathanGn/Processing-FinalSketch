obstacle[] p = new obstacle [3];

boolean fail = false;
boolean intro = true;
int score = 0;
int playerY =20;


  void setup()
  {
      size(550,700);
      fill(0);
      stroke(255);
      textSize(32);
      for(int i = 0; i < 3 ; i++)
      {
        p[i] = new obstacle (i);
      }
  }
  
  void draw()
  {
    background(0);
    
  }