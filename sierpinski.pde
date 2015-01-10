void setup(){
  size(800,600);
  fill(#B60C48);
  strokeWeight(1);
}
float l = 15; 
float h = ((sqrt(3)/2)*l); 
float x1 = -240.0;
float x2 = -120.0;
Tri mtri = new Tri();
int f = 1;
float xx = 1.0;
void draw(){
  background(#333333);
  translate(width/2,250);
  if(f==1){mtri.draw_t(f,f);}
  else if(f<6){scale(xx);xx+=0.01;mtri.draw_t(pow(2,f-1),f);}
  else{f=1;}
}

void mousePressed(){
  //saveFrame("meh-####.png");
  //if (frameCount%5 == 0 && frameCount < 621) saveFrame("gg/image-####.png");
}
