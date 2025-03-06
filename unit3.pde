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
color black = #030202;


selectedColor = black;

float sliderX;
float thickness;

void setup() {
  size(800, 800);
  strokeWeight(5);
  textSize(30);  
  
  //slider
  sliderX = 275;
  thickness = 0;
}

void draw() {
  background(255);

  thickness = map(sliderX, 29, 517, 0, 25); //x, y, thickness 0-15
  strokeWeight(5);
  
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
  
  stroke(0);
  strokeWeight(thickness);
  line(29, 116, 517, 116);
  strokeWeight(5);
  circle(sliderX, 116, 20);
  
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(grey);
  } else {
    stroke(0); 
  }
}

void mouseDragged() {
  controlSlider();
  if (mouseY > 150 && mouseY < 800) {
  stroke(selectedColor);
  strokeWeight(thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    strokeWeight(0);
  }
}

void mouseReleased() {
  controlSlider();
  
  if(dist(50, 50, mouseX, mouseY) < 25) {
  selectedColor = red;
  }
  
  if(dist(125, 50, mouseX, mouseY) < 25) {
  selectedColor = orange;
  }
  
  if(dist(200, 50, mouseX, mouseY) < 25) {
  selectedColor = yellow;
  }
  
  if(dist(275, 50, mouseX, mouseY) < 25) {
  selectedColor = green;
  }
  
  if(dist(350, 50, mouseX, mouseY) < 25) {
  selectedColor = blue;
  }
  
  if(dist(425, 50, mouseX, mouseY) < 25) {
  selectedColor = lightblue;
  }
  
  if(dist(500, 50, mouseX, mouseY) < 25) {
  selectedColor = purple;
  }

}

void controlSlider() {
 if (mouseX > 29 && mouseX < 517 && mouseY > 105 && mouseY < 127) {
    sliderX = mouseX; 
 }
}
