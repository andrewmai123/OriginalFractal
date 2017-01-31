public void setup()
{
	background(0);
	size(800,800);
	rectMode(CENTER);
}

public void draw() 
{
	fractal(400,400,300);
}

public void fractal(float x, float y, float siz)
{
	rect(x,y,siz,siz);
	if (siz>10)
	{
		fractal(x-siz/3,y,siz/1.5);
		fractal(x+siz/3,y,siz/1.5);
		fractal(x,y+siz/3,siz/1.5);
		fractal(x,y-siz/3,siz/1.5);
	}

}

