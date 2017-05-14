Ball[] balls;
boolean reactionStarted;

void setup() {
  size(600, 600);
  reactionStarted = false;
  balls= new Ball[25];
  for (int i=0; i < balls.length; i++) {
    balls[i]=new Ball();
  }
}


void draw() {
  background(0);
  for (int i=0; i<balls.length; i++) {
    fill(balls[i].c);
    ellipse(balls[i].x, balls[i].y, 2*balls[i].rad, 2*balls[i].rad);
    balls[i].move();
  }
}
void mouseClicked() {
}