class Ball {
  float x;
  float y; 
  float rad;
  color c;
  float dx;
  float dy;
  int state;

  Ball() {
    float r = random(256);
    float g= random(256);
    float b= random(256);
    c= color(r, g, b);
    rad= 10;
    x=random((width-r)+r/2);
    y= random((height-r)+r/2);
    dx=random(10)-5;
    dy= random(10)-5;
    state = 0; //0 state = regular moving state, 1 state = chain reaction, not moving state
  }

  Ball(int newX, int newY) {
    float r = random(256);
    float g= random(256);
    float b= random(256);
    c= color(r, g, b);
    rad= 10;
    x=newX;
    y= newY;
    dx=random(10)-5;
    dy= random(10)-5;
    state = 0; //0 state = regular moving state, 1 state = chain reaction, not moving state
  }

  void move() {
    if (state==0) {
      x=x+dx;
      y=y+dy;
      bounce();
    }
    if (state==1) {
      dx=0;
      dy=0;
      if (rad<15) {
        rad+=1;
      } else {
        while (rad>0) {
          rad-=1;
        }
      }
    }
  }

  void bounce() {
    if (x<=0 || x>=600) {
      dx= -1 * dx;
    }
    if (y<=0 || y>=600) {
      dy= -1 * dy;
    }
  }

  void changeState() {
    state += 1;
  }
}