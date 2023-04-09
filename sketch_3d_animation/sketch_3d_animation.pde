PFont font1;
float k=0;
int cube_size=90;
float rotate_speed=120;
int dist=85;

void setup () {
  size(540, 370, P3D);
  font1 = loadFont("CourierNewPSMT-48.vlw");
}
void draw() {
  lights();
  background(0);
  fill(255);
  textFont(font1, 24);
  text("Yaw : Press 'z'",1,20);
  text("Pitch : Press 'y'",1,45);
  text("Roll : Press 'x'",1,70);
  text("Z",263,363);
  textFont(font1, 32);
  text("Y",420,220);
  textFont(font1, 16);
  text("X",395,65);
  translate(width/2, height/2, 0);
  scale(2);
  stroke(#2a3b90);
  fill(#2a3b90);
  line(-80,-10,0,60,10,25);//Ypitch
  line(0,-60,30,0,90,-20);//Zyaw
  line(114,-110,-150,-45,38,70);//Xroll
  draw_cube(0);
  k=k+(0.01*rotate_speed);
}
void draw_cube(float beg_x) {
  pushMatrix();
  rotateX(-0.4);
  rotateY(-0.5);
  if (keyPressed) {
    if (key == 'y' || key == 'Y') {
      translate(beg_x,0,0); rotateX(k);
    }
    if (key == 'z' || key == 'Z') {
      translate(beg_x,0,0); rotateY(k);
    }
    if (key == 'x' || key == 'X') {
      translate(beg_x,0,0); rotateZ(k);
    }
  }
  box(cube_size);
  translate(-30.5, -30.5, 30.5);
  fill(#0b0f23);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  translate(0, 30.5, 0);
  box(30);
  translate(0, 30.5, 0);
  box(30);
  translate(-30.5, 0, 0);
  box(30);
  translate(-30.5, 0, 0);
  box(30);
  translate(0, -30.5, 0);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  /////
  translate(-30.5, -30.5, -30.5);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  translate(0, 30.5, 0);
  box(30);
  translate(0, 30.5, 0);
  box(30);
  translate(-30.5, 0, 0);
  box(30);
  translate(-30.5, 0, 0);
  box(30);
  translate(0, -30.5, 0);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  /////
  translate(-30.5, -30.5, -30.5);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  translate(0, 30.5, 0);
  box(30);
  translate(0, 30.5, 0);
  box(30);
  translate(-30.5, 0, 0);
  box(30);
  translate(-30.5, 0, 0);
  box(30);
  translate(0, -30.5, 0);
  box(30);
  translate(30.5, 0, 0);
  box(30);
  popMatrix();
}
