color turq = #6492A2;
color purpbl = #6474A2;
color lightblue = #7F9BD6;

float sliderX;
float thickness;

void setup() {
  size(600, 800);
  strokeWeight(5);
  stroke(purpbl);
  fill(purpbl);
  sliderX = 400;
  thickness = 0;
}

void draw() {
  background(turq);
  thickness = map(sliderX, 100, 700, 0, 15);
  strokeWeight(thickness);
  line(300, 100, 300, 700);
  circle(300, sliderX, 20);
}

void mouseDragged() {
  controlSlider();
}

void mouseReleased() {
  controlSlider();
}

void controlSlider() {
 if (mouseY > 100 && mouseY < 700 && mouseX > 250 && mouseX < 350) {
    sliderX = mouseY; 
 }
}
