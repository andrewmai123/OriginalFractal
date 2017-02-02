public void setup() {
  size(800, 800);
}

public void draw() {
  background(0);
  translate(width*0.5, height*0.5);
  fractal(0,0,400);

}

public void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) 
  {
  	float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

public void fractal(float x, float y, int siz)
{
  strokeWeight(0.8);
  fill(255);

  polygon(x,y,siz,180);
  if (siz>1)
  {
    fractal(x-siz/2,y,siz/2);
    fractal(x+siz/2,y,siz/2);
    fractal(x,y+siz/2,siz/2);
    fractal(x,y-siz/2,siz/2);
  }

}
