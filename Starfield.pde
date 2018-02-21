raindrop[] raindrop = new raindrop[2500];

void setup(){
 //size(640,360);
 fullScreen();
 for (int i = 0; i < raindrop.length; i++){
 raindrop[i] = new raindrop();
 }
}

void draw(){
  background(5,5,50);
  for (int i = 0; i < raindrop.length; i++){
  raindrop[i].display();
  raindrop[i].ascend();
  raindrop[i].bottom(); 
  }
}