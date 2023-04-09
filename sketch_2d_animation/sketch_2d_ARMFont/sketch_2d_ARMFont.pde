PFont font1;
float scale = 1;
float xPan = 810;
float yPan = 540;
boolean zoomIn = false;
boolean zoomOut = false;
boolean panUp = false;
boolean panDown = false;
boolean panLeft = false;
boolean panRight = false;
float panSpeed = 1;
float zoomSpeed = 1.04;
  
void setup() {
  size (1000, 600, P2D);
  font1 = loadFont("Cambria-Bold-48.vlw");
}

void draw(){
  translate (width/2, height/2);
  float a = atan2(mouseY-height/2, mouseX-width/2);
  if (mousePressed){
    rotate(a);
  }
  scale (scale);
  translate (-xPan, -yPan);
  background(250,255,255);
  noStroke();
  
  textFont(font1,128);
  fill(0,10,50);
  text("ARM", width/2, height/2);
  
  if (zoomIn) {
    scale *= zoomSpeed;
  }
  if (zoomOut) {
    scale /= zoomSpeed;
  }
  if (panUp) {
    yPan -= panSpeed;
  }
  if (panDown) {
    yPan += panSpeed;
  }
  if (panLeft) {
    xPan -= panSpeed;
  }
  if (panRight) {
    xPan += panSpeed;
  }
}

void keyPressed(){
  if (keyCode == UP){
    zoomIn = true;
    zoomOut = false;
  }
   if (keyCode == DOWN){
    zoomOut = true;
    zoomIn = false;
  }
  if (key == 'w'){
    panUp = true;
    panDown = false;
  }
  if (key == 's'){
    panDown = true;
    panUp = false;
  }
  if (key == 'a'){
    panLeft = true;
    panRight = false;
  }
  if (key == 'd'){
    panRight = true;
    panLeft = false;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    zoomIn = false;
  }
  if (keyCode == DOWN) {
    zoomOut = false;
  }
  if (key == 'w') {
    panUp = false;
  }
  if (key == 's') {
    panDown = false;
  }
  if (key == 'a') {
    panLeft = false;
  }
  if (key == 'd') {
    panRight = false;
  }
}
