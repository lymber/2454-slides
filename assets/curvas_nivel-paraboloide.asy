import solids;
size(10cm);
currentprojection=orthographic(3,2,3);
limits((-2,-2,-0.5),(2,2,3.5));

currentlight=light(white,(0,0,2),(2,-2,-2));
// uncomment for transparent background
// currentlight.background=black+opacity(0);

path3 parayz=graph(new triple(real z) {
    return (0,z,z*z);},-2,2,20,operator ..);

revolution paraframe=revolution(parayz,axis=Z);
surface paraboloideeli=surface(paraframe);

draw(surface(plane(4*X,4*Y,5/2*Z-2*X-2*Y)), orange+opacity(0.4));
draw(paraboloideeli,lightblue);
draw(circle((0,0,5/2),sqrt(5/2),Z),2bp+orange);
dot(O,orange);

xaxis3("$x$",Arrow3);
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
