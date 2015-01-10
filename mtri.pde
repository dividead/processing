class Tri {
  PVector t1 = new PVector(0, 0);
  PVector t3 = new PVector(-l/2, h);
  PVector t2 = new PVector(+l/2, h);
  int c = 0;
  void rtri(int n) {
    if (n==1) {
      //fill(random(255),random(255),random(255));
      triangle(t1.x, t1.y, t2.x, t2.y, t3.x, t3.y);
      println(++c);
      n--;
    } 
    else if (n>1) {
      n--;
      rtri(n);
      pushMatrix();
      translate(l/2*pow(2, n-1), h*pow(2, n-1));
      rtri(n);
      popMatrix();
      pushMatrix();
      translate(-l/2*pow(2, n-1), h*pow(2, n-1));
      rtri(n);
      popMatrix();
    }
  }
  void draw_t(float i, int m) {
    rtri(m);
    translate(l/2*i, h*i);
    rotate(radians(x1));
    rtri(m);
    if (x1<0) {
      x1+=5; //speed
    }
    else {
      translate(-l/2*i, h*i);
      rotate(radians(x2));
      rtri(m);
      if (x2<120) {
        x2+=5; //speed
      }
      else {
        x1=-240;
        x2=-120;
        f++;
      }
    }
  }
} //end of class
