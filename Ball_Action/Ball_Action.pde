ArrayList ballCollection = new ArrayList();
int count = 0;
int rate = 30;
float life=1;
int number=50;
int fre =2;
void setup(){
  size(600,600);
  smooth();
  frameRate(rate);
}

void draw(){
  background(0);
  count++;
  float t = count/rate;
  if(count%(rate/fre)==0){
    for(int i=0;i<number;i++){
      Ball myBall = new Ball(mouseX,mouseY);
      ballCollection.add(myBall);
    }
  }
  for(int i=1; i<ballCollection.size();i++){
    Ball nb = (Ball) ballCollection.get(i);
    nb.action();
  }  
  
  if(t>life && count%(rate/fre) == 0){
    for(int i=0; i<number; i++){
      ballCollection.remove(0);
    }
  }
}
  

