
float scale = 1;
float xPan = 810;
float yPan = 540;
boolean zoomIn = false;
boolean zoomOut = false;
boolean panUp = false;
boolean panDown = false;
boolean panLeft = false;
boolean panRight = false;
float panSpeed = 3;
float zoomSpeed = 1.04;
  
void setup() {
  size (1200, 600, P2D);
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
  fill(0,10,50);
  //A
  quad(475,300,325,800,375,800,525,300);
  quad(475,300,625,800,675,800,525,300);
  quad(415,600,415,650,615,650,615,600);
  //R
  bezier(725, 300, 975, 300, 975, 600, 725, 600);
  fill(250,255,255);
  bezier(675, 350, 925, 300, 925, 600, 675, 550);  
  fill(0,10,50);
  quad(675,300,675,800,725,800,725,300);
  quad(775,550,875,800,925,800,825,550);
  //M
  quad(925,300,925,800,975,800,975,300);
  quad(1225,300,1225,800,1275,800,1275,300);
  quad(925,300,1075,650,1125,650,975,300);
  quad(1225,300,1075,650,1125,650,1275,300);
  
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
