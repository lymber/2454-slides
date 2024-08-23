import graph3;
size(8cm,IgnoreAspect);

currentprojection=orthographic(20,20,5);
limits((-1.5*pi,-1.5*pi,-1.5),(1.5*pi,1.5*pi,1.5));

currentlight=light(white,(2,2,2),(2,-2,-2));

// real f(pair z) {return (z.x+z.y)/(2+cos(z.x)*sin(z.y));}

real f(pair z) {
  return sin(z.x)*cos(z.y);
}


draw(surface(f,(-pi,-pi),(pi,pi),50,Spline),lightblue+opacity(0.6),blue);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
