//sketch
color red = #FF0000;
color purple = #9800FF;
color blue = #001BFF;
color lightblue = #00BDFF;
color green = #29FF00;
color yellow = #FAFF00;
color orange = #FF9E00;
color grey = #DEDEDE;
color buttoncolor = #5F7A81;

color selectedColor;

void setup() {
  size(800, 800);
  strokeWeight(5);
  textSize(30);  
}

void draw() {
  background(255);
  
  fill(grey);
  stroke(0);
  rect(2, 5, 795, 154);
  
  fill(buttoncolor);
  stroke(0);
  rect(560, 25, 50, 115);
  rect(635, 25, 50, 115);
  rect(710, 25, 50, 115);
  
  tactile(50, 50, 25);
  fill(red);
  circle(50, 50, 50);
  
  tactile(125, 50, 25);
  fill(orange);
  circle(125, 50, 50);
  
  tactile(200, 50, 25);
  fill(yellow);
  circle(200, 50, 50);
  
  tactile(275, 50, 25);
  fill(green);
  circle(275, 50, 50);

  tactile(350, 50, 25);
  fill(blue);
  circle(350, 50, 50); 
  
  tactile(425, 50, 25);
  fill(lightblue);
  circle(425, 50, 50);
  
  tactile(500, 50, 25);
  fill(purple);
  circle(500, 50, 50);
  
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(grey);
  } else {
    stroke(0); 
  }
}
