color bluepurplekinda = #5971F5;
color lightblue = #C0C9F7;
color darkdarkpurple = #021BA5;
color lightestblue = #E8F3FA;
color background = #D3DBE0;
color white = #FFFFFF;
color grey = #C4EAFC;

//variables for colour selection
color selectedColor;

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(lightestblue);
  selectedColor = background;
}

void draw() {
  background(background);
  
  //indicator
  stroke(grey);
  fill(selectedColor);
  square(100, 100, 400);
  
  //buttons
  tactile(650, 100, 50);
  fill(lightblue);
  circle(650, 100, 100);
  
  tactile(650, 300, 50);
  fill(bluepurplekinda);
  circle(650, 300, 100);
  
  tactile(650, 500, 50);
  fill(darkdarkpurple);
  circle(650, 500, 100);
  
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(grey); 
  }
}

void mouseReleased() {
  if (dist(650, 100, mouseX, mouseY) < 50) { //if the distance between (100, 100) is 50
  selectedColor = lightblue;
  }
  
  if (dist(650, 300, mouseX, mouseY) < 50) {
  selectedColor = bluepurplekinda;
  }
  
  if (dist(650, 500, mouseX, mouseY) < 50) {
  selectedColor = darkdarkpurple;
  }
  
}
