int food=3; 
int score;
int x;
int y;
float randomX =  random(800);        
void setup() {

  size(800, 500);
}
void draw() {
  checkCatch(mouseX, food);
  drawFish();
  a();
  if (food>500) {
    a();
    food=3;
    randomX =  random(800);
  
  }
  checkCatch((int)randomX,food);
}

void a()
{//background(#2FDAE8);
  food=food+2;
  fill(#270C0C);

  ellipse(randomX, food, 10, 10);
}
void drawFish() {

  background(141, 233, 237);

  noStroke();

  fill(255, 255, 255);

  ellipse(mouseX-17, mouseY-17, 20, 20); //back side eye

  fill(255, 200, 88);

  ellipse(mouseX, mouseY, 90, 50); //body

  triangle(mouseX+30, mouseY, mouseX+70, mouseY+30, mouseX+70, mouseY-30); //tail

  stroke(0);

  triangle(mouseX, mouseY, mouseX+15, mouseY+10, mouseX+15, mouseY-10); //side fin

  noStroke();

  fill(255, 200, 88);

  ellipse(mouseX, mouseY, 15, 15); //side fin cover

  noStroke();

  fill(255, 255, 255);

  ellipse(mouseX-25, mouseY-15, 20, 20); //front eye

  fill(0, 0, 0);

  ellipse(mouseX-25, mouseY-15, 5, 5); //pupil

  fill(141, 233, 237);

  ellipse(mouseX-45, mouseY, 25, 25); //mouth
}


void checkCatch(int x, int y) {

  if (x > mouseX && x < mouseX+30) {

    if (y > mouseY && y < mouseY+20) {

      score++;
      food=3;
      randomX=random(800);
    }
  } else if (food > 500 && score > 0) {

    score--;
  }
  textSize(16);

text("Score: " + score, 20, 20);textSize(16);

text("Score: " + score, 20, 20);

  println("Your score is now: " + score);
}