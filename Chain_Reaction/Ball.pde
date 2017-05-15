class Ball {
  float x;
  float y;
  float rad;
  float OGrad;
  boolean HitMax;
  color c;
  float dx;
  float dy;
  int state;
  
  Ball(){
    float r= random(256);
    float g = random(256);
    float b = random(256);
    c = color(r,g,b);
    rad = 10;
    OGrad = rad;
    HitMax = false;
    x = random((width-r) + r/2);
    y = random((height - r) + r/2);
    dx = random(10) - 5;
    dy = random(10) - 5;  
    state = 0;
  }
  
  void move(){
    ellipseMode(RADIUS);
    if(state == 0){
      x = x + dx;
      y = y + dy;
    bounce();
    }
    else{
      if(rad < OGrad * 5 && !HitMax){
        rad +=1;
      }
      if(rad == OGrad * 5){
        rad -= 1;
        HitMax = true;
      }
      if( HitMax && rad != 0){
        rad -=1;
      }
      if (rad == 0){
        state = 2;
      }
     
    }   
    ellipse(x,y,rad,rad);
    fill(c);
  }
  
  void bounce(){
    if(y > height || y <rad){
      dy *= -1;
    }
    if(x > width || x < rad){
      dx *= -1;
    }
  }
  /*void react(){
    if (state = 1){
      */
  
}