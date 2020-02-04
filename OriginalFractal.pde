float h=0.0;
public void setup() {
	size(500, 500);
	colorMode(HSB);
	fractal(100, 250, 900);
	fractal(200, 250, 900);
}

public void fractal(int x, int y, int siz) {
	fill(0,0,0,5);
  	stroke(0,0,0,5);
  	rect(0, 0, 500, 500);

  	fill(h, 255, 255);
	beginShape();
	vertex(x, y-siz);
	vertex(x+siz/4, y-siz/2);
	vertex(x+siz, y-siz/2);
	vertex(x+siz/2, y);
	vertex(x+siz, y+siz/2);
	vertex(x-siz/2, y+siz/4);
	endShape(CLOSE);

	h+=5.5;
	if (h>255) {
		h=0;
	}

	if (siz>10) {
		if (x<=100) {
			fractal(x+10, y, siz-10);
		}
		else {
			fractal(x-10, y, siz-10);
		}
	}
}