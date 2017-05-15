  Ball[] balls;
  boolean reactionStarted;
  
  void setup(){
    size(600,600);
    reactionStarted = false;
    balls = new Ball[26];
    for (int i = 0; i<balls.length; i++){
      balls[i] = new Ball();
    }
  }
    
      void draw(){
        background(0);
        for(int i = 0; i < balls.length; i++){
          for( int q = 0; q < balls.length; q++){
            if(colliding(balls[i], balls[q]) && reactionStarted && balls[q].state == 1){
              balls[i].state = 1;
              q += balls.length;
            }
          }
          balls[i].move();             
        }
    }
  
    void mouseClicked(){
      if(!reactionStarted){
        Ball CRBall = new Ball();
        CRBall.x = mouseX;
        CRBall.y = mouseY;
        balls[0] = CRBall;
        CRBall.state = 1;
        reactionStarted = true;
      }
    }
      boolean colliding(Ball b1, Ball b2) {
      return dist(b1.x, b1.y, b2.x, b2.y) < b1.rad + b2.rad;
    }