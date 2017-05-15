class Ball {
  float x;
  float y;
  float rad;
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
    x = random((width-r) + r/2);
    y = random((height - r) + r/2);
    dx = random(10) - 5;
    dy = random(10) - 5;  
  }
  
  void move(){
    ellipseMode(RADIUS);
    x = x + dx;
    y = y + dy;
    bounce();
    ellipse(x,y,rad,rad);
  }
  
  void bounce(){
    if(y > height || y <rad){
      dy *= -1;
    }
    if(x > width || x < rad){
      dx *= -1;
    }
  }
  
  
}