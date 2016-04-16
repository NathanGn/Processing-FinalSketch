class birdy
{
  float PosX,PosY,SpeedY;
  
  birdy()
  {
    PosX = 250;
    PosY = 400;
  }
  
  void drawBird()
  {
    stroke(255);
    noFill();
    strokeWeight(2);
    stroke(#03ECFF);
    ellipse(PosX, PosY, playerY, playerY);
  }
  
 void jump()
 {
   SpeedY = -7;
 }
 
 void move()
 {
   PosY += SpeedY;
   
   for(int i = 0; i < 3; i++)
   {
     p[i].PosX -= 3;
   }
 }
 
 void drag()
 {
   SpeedY += 0.4;
 }
 
 void collision()
 {
   if( PosY > 800)
   {
     fail = false;
   }
   for (int i = 0; i < 3; i++)
   {
     if((PosX < p[i].PosX + 10 && PosX > p[i].PosX-10) && (PosY < p[i].opening - 100 || PosY > p[i].opening + 100))
     {
       fail = false;
     }
   }
 }
}

 