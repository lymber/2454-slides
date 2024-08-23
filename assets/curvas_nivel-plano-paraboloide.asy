import graph;
import contour;
import palette;

size(10cm,IgnoreAspect);

// currentprojection=orthographic(-10,-10,8);
// limits((-1,-1,-1),(5,10,12));
// currentlight=light(white,(2,2,2),(2,-2,-2));

real f(pair z) {return z.x^2+z.y^2;}

draw(contour(f,(-2,-2),(2,2),new real []{0}),1bp+orange);
draw(contour(f,(-2,-2),(2,2),new real []{1/4}),1bp+orange);
draw(contour(f,(-2,-2),(2,2),new real []{1}),1bp+orange);
draw(contour(f,(-2,-2),(2,2),new real []{2}),1bp+orange);

xaxis("$x$",Arrow); 
yaxis("$y$",Arrow);

