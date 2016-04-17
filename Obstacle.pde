class obstacle
{
  float PosX, opening;
  boolean cashed = false;
  obstacle (int i)
  {
    PosX = 100 + (i* 200);
    opening = random (600)+100;
  }
  
  void drawPillar()
  {
    stroke(#FF0303);
    line(PosX, 0, PosX, opening-100);
    line(PosX, opening+100, PosX, 800);
  }
  
  void Position()
  {
    if(PosX < 0)
    {
      PosX += (200 * 3);
      opening = random (600)+100;
      cashed = false;
  }
  
  if (PosX < 250 && cashed == false)
  {
    cashed = true;
    score ++;
  }
  }
  
  void reset()
  {
    fail = true;
    score = 0;
    PosX = 400;
    for(int i = 0; i < 3; i++)
    {
      p[i].PosX+=550;
      p[i].cashed = false;
    }
  }
  
  void keyPressed()
  {
    b.jump();
    intro = false;
    if(fail == false)
    {
      reset();
    }
}
}