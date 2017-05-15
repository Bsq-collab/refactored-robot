Ball[] balls;
boolean reactionStarted;

void setup() {
  size(600, 600);
  reactionStarted = false;
  balls= new Ball[25];
  for (int i=0; i < balls.length - 1; i++) {
    balls[i]=new Ball();
  }
}


void draw() {
  background(0);
  if (reactionStarted) {
    for (int i=0; i<balls.length; i++) {
      fill(balls[i].c);
      ellipse(balls[i].x, balls[i].y, 2*balls[i].rad, 2*balls[i].rad);
      balls[i].move();
    }
  } else {
    for (int i=0; i<balls.length - 1; i++) {
      fill(balls[i].c);
      ellipse(balls[i].x, balls[i].y, 2*balls[i].rad, 2*balls[i].rad);
      balls[i].move();
    }
  }
}
void mouseClicked() {
  if (!reactionStarted) {
    balls[24] = new Ball(mouseX, mouseY);
    balls[24].state = 1;
    //sets one ball's state to 1, which starts the chain reaction
    // state only has to change for 1 ball
    reactionStarted = true;
  }
}