

class Ball{
  float x=0;
  float y=0;
  float s=random(5,20);
  float r=random(0,255);
  float g=random(0,255);
  float b=random(0,255);
  float speedX = random(-3,3);
  float speedY = random(-3,3);
  float gravity=0.2;
  Ball(float _x,float _y){
  x=_x;
  y=_y;
  }
 void action(){ 
  //float speedX = random(-2,2);
  //float speedY = random(-2,2);
  
  //COLOR
  fill(r,g,b);
  //GRAVITY
  speedY+=gravity;
  //MOVE
  y+=speedY;
  x+=speedX;
  //BOUNCE
  if(x>width || X<0){
    speedX=-speedX;
  }
  if(y>height || Y<0){
    speedY=-speedY;
  }
  //DISPLAY
  ellipse(x,y,s,s);
  
 }
 
}

