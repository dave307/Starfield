class raindrop {
  float x;
  float y;
  
  float size;
  float lsize = 1;
  float msize = 10;
  
  float yspeed;
  float mspeed = 10;
  float lspeed = 0.5;
  
  raindrop(){
    x = random(0,width);
    y = 0;
    size = random(lsize,msize);
    yspeed = random(lspeed,mspeed);
  }
    
   void ascend(){
     y = y + yspeed;
    }
    

  void display(){
    noStroke();
    fill(255,map(yspeed,lspeed,mspeed,1,255));
    rect(x,y,size,size);
  }
  void bottom(){
    if (y > height + size){
      y = 0 - size;
      x = random(0,width);
      size = random(lsize,msize);
    yspeed = random(lspeed,mspeed);
    }
  }
  
}