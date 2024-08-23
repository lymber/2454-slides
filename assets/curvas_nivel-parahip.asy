import graph3;
size(10cm);
currentprojection=orthographic(3,2,3);
limits((-2,-2,-2),(2,2,2));

currentlight=light(white,(0,0,2),(2,-2,-2));
// uncomment for transparent background
// currentlight.background=black+opacity(0);

real f(pair z){return z.y**2-z.x**2;}
path3 reta=graph(new triple(real z) {
    return (z,z,0);},-1.75,1.75,20,operator ..);
path3 hip=graph(new triple(real z) {
    return (z,sqrt(1+z*z),1);},-sqrt(33)/4,sqrt(33)/4,20,operator ..);

draw(surface(plane(4*X,4*Y,Z-2*X-2*Y)),
     lightgreen+opacity(0.4));
draw(surface(plane(4*X,4*Y,-2*X-2*Y)),
     orange+opacity(0.4));
draw(surface(plane(4*X,4*Y,-Z-2*X-2*Y)),
     red+opacity(0.4));
draw(surface(f,(-1.75,-1.75),(1.75,1.75),20,Spline),lightblue);

draw(reta,orange);
draw(reflect(O,Y,Z)*reta,orange);
draw(hip,lightgreen);
draw(reflect(O,X,Z)*hip,lightgreen);
draw(reflect(O,X,Y)*rotate(90,Z)*hip,red);
draw(rotate(180,Y)*rotate(90,Z)*hip,red);

xaxis3("$x$",Arrow3);
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
