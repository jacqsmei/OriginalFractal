public void setup() {
	size(500, 500);
	fractal(250, 250, 400);
}

public void fractal(int x, int y, int siz) {
	beginShape();
	vertex(x, y-siz);
	vertex(x+siz/4, y-siz/2);
	vertex(x+siz, y-siz/2);
	vertex(x+siz/2, y);
	vertex(x+siz, y+siz/2);
	vertex(x-siz/2, y+siz/4);
	endShape(CLOSE);
	if (siz>10) {
		fractal(x-10, y, siz-5);
	}
}