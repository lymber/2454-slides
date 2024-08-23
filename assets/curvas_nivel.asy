import graph3;
import contour;
import grid3;
import palette;

size(8cm,IgnoreAspect);

currentprojection=orthographic(-10,-10,8);
limits((-1,-1,-1),(5,10,12));

currentlight=light(white,(2,2,2),(2,-2,-2));

//real[] lignesniveaux={2,4,6,8};

real f(pair z) {return (z.x+z.y)/(2+cos(z.x)*sin(z.y));}

draw(surface(f,(0,0),(5,10),50,Spline),lightblue+opacity(0.8),blue);

draw(lift(f,contour(f,(0,0),(5,10),new real []{2})),1bp+red);
draw(lift(f,contour(f,(0,0),(5,10),new real []{4})),1bp+orange);
draw(lift(f,contour(f,(0,0),(5,10),new real []{6})),1bp+green);
draw(lift(f,contour(f,(0,0),(5,10),new real []{8})),1bp+blue);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
