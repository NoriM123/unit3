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
color white = #FFFFFF;

color selectedColor;

float sliderX;
float thickness;

PImage person;

void setup() {
  selectedColor = black;
  size(980, 800);
  strokeWeight(5);
  textSize(30);  
  sliderX = 275;
  thickness = 0;
  background(255);
  person = loadImage("person.png");
}

void draw() {
  
  thickness = map(sliderX, 29, 517, 0, 25); //x range, x, thickness 0-15
  strokeWeight(5);
  
  fill(grey);
  stroke(0);
  rect(2, 5, 975, 154);
  
  fill(buttoncolor);
  stroke(0);
  tactile1(560, 25, 50, 115);
  rect(560, 25, 50, 115);
  tactile1(635, 25, 50, 115);
  rect(635, 25, 50, 115);
  tactile1(710, 25, 50, 115);
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
  
  tactile(820, 48, 55);
  fill(black);
  circle(820, 48, 55);
  
  tactile(820, 117, 55);
  fill(white);
  circle(820, 117, 55);
  
  tactile1(862, 32, 100, 100);
  fill(red);
  rect(862, 32, 100, 100);
  
  stroke(0);
  fill(selectedColor);
  strokeWeight(thickness);
  line(29, 116, 517, 116);
  strokeWeight(5);
  circle(sliderX, 116, 20);
  
  image(person, 862, 32);
}

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(grey);
  } else {
    stroke(0); 
  }
}

void tactile1 (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
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
  
  if(dist(820, 48, mouseX, mouseY) < 27) {
  selectedColor = black;
  }
  
  if(dist(820, 117, mouseX, mouseY) < 27) {
  selectedColor = white;
  }
  
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
