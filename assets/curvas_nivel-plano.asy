import graph;
import contour;
import palette;

size(10cm,IgnoreAspect);

// currentprojection=orthographic(-10,-10,8);
// limits((-1,-1,-1),(5,10,12));
// currentlight=light(white,(2,2,2),(2,-2,-2));

real f(pair z) {return (z.x+z.y)/(2+cos(z.x)*sin(z.y));}

draw(contour(f,(0,0),(5,10),new real []{2}),1bp+red);
draw(contour(f,(0,0),(5,10),new real []{4}),1bp+orange);
draw(contour(f,(0,0),(5,10),new real []{6}),1bp+green);
draw(contour(f,(0,0),(5,10),new real []{8}),1bp+blue);

xaxis("$x$",Arrow); 
yaxis("$y$",Arrow);

