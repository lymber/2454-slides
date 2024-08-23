import graph;
import contour;
import palette;

size(10cm);

// currentprojection=orthographic(-10,-10,8);
// limits((-1,-1,-1),(5,10,12));
// currentlight=light(white,(2,2,2),(2,-2,-2));

path seg=(-2,-2)--(2,2);

draw(seg,dashed);
draw(rotate(90)*seg,dashed);

for(int i=1; i < 6; ++i) {
  draw(rotate(15*i)*seg,1bp+red);
}

for(int i=1; i < 6; ++i) {
  draw(rotate(-15*i)*seg,1bp+orange);
}

filldraw(circle((0,0),0.05),white);
draw(circle((0,0),0.05));

xaxis("$x$",Arrow); 
yaxis("$y$",Arrow);

