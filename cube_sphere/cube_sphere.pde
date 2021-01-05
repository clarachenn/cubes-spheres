float rotx, roty, rotz;

void setup() {
  size(800, 800, P3D);
  rotx = radians(45);
  roty = radians(45);
  rotz = radians(45);
}

void draw() {
  background(0);

  translate(width/2, height/2, 0);
  rotateX(rotx);
  rotateY(roty);
  rotateZ(rotz);


  noFill();
  stroke(255);
  strokeWeight(3);
  sphere(300);

  noFill();
  stroke(#FACF79);
  strokeWeight(3);
  sphere(200);

  fill(255);
  stroke(255);
  strokeWeight(3);
  sphere(100);

  cube(0, -50, 100, #FFE0F7, 70);
  cube(100, 0, -150, #7B79FA, 120);
  cube(-50, -100, 150, #FA79C0, 100);
  cube(-100, 50, 0, #FA7997, 50);
  cube(150, 50, -100, #FACF79, 150);
  cube(30, 150, 100, #FFE0F7, 150);
  cube(30, -200, 100, #FFE0F7, 150);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  fill(c);
  stroke(255);
  strokeWeight(3);
  box(size); //side length
  popMatrix();
}
void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*0.01;
}
