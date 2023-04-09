
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
  fill(211,250,211);
  rect(width/2, height/2, 512, 512);
  fill(172,245,168);
  rect(width/2+128, height/2+128, 256, 256);
  fill(86,197,184);
  rect(width/2+192, height/2+192, 128, 128);
  fill(0,150,200);
  rect(width/2+224, height/2+224, 64, 64);
  fill(0,80,125);
  rect(width/2+240, height/2+240, 32, 32);
  fill(0,10,50);
  rect(width/2+248, height/2+248, 16, 16);
  fill(0,5,25);
  rect(width/2+252, height/2+252, 8, 8);
  fill(0,0,0);
  rect(width/2+254, height/2+254, 4, 4);
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
