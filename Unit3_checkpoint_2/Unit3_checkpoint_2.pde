color lightorange = #FFD67E;
color red = #DB0202;
color lightpink = #DEAC9A;
color black = #000000;
color purple = #A264A2;

int toggle;

void setup() {
  size (600, 600);
  strokeWeight (5);
  textSize (30);
  toggle = 1;
}

void draw() {
  background(lightpink);
  fill(red);
  stroke(lightorange);
  rect(100, 100, 200, 50);
  
  if (toggle > 0) {
  guidelines();
  }
}

void mouseReleased() {
  if (mouseX > 100 && mouseX < 300 && mouseY < 150 && mouseY > 100) {
    toggle = toggle * -1;
  }
}

void guidelines() {
  fill(black);
  stroke(purple);
  line(0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
  
}
