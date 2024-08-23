import graph3;
currentprojection=orthographic(5,2,3);
limits((-75,-75,-75),(75,75,75));

currentlight=light(white,(2,2,2),(2,-2,-2));
// uncomment for transparent background
//currentlight.background=black+opacity(0);

triple grf1(pair z) {
  real r=z.x;
  real t=z.y;
  real x=t;
  real y=r*t;
  real z=x^2/(x^2-y^2);
  return (x,y,z);
}

triple grf2(pair z) {
  real r=z.x;
  real t=z.y;
  real x=r*t;
  real y=t;
  real z=x^2/(x^2-y^2);
  return (x,y,z);
}

surface s1 = scale(10,10,10)*surface(grf1,(0.0,0.05),(0.9,5),nu=20,nv=20,Spline);
surface s2 = scale(10,10,10)*surface(grf2,(0.0,0.05),(0.9,5),nu=20,nv=20,Spline);
surface s3 = reflect(O,X,Z)*surface(s1,s2);
surface s4 = reflect(O,Y,Z)*surface(s1,s2,s3);

draw(surface(plane(150*X,150*Y,20*Z-75*X-75*Y)),orange+opacity(0.4));
draw(surface(plane(150*X,150*Y,-20*Z-75*X-75*Y)),red+opacity(0.4));
draw(s1,lightblue); //+opacity(0.8));
draw(s2,lightblue); //+opacity(0.8));
draw(s3,lightblue); //+opacity(0.8));
draw(s4,lightblue); //+opacity(0.8));

xaxis3("$x$",Arrow3);
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
