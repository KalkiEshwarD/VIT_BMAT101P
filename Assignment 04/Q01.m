% Write a program in MATLAB to find the volume of the region in the first octant bounded by the planes x + y + 2z = 2 and 2x + 2y + z = 4, using triple integration.
% Find limits of integration such that the bounds for x are constant.
% Also use MATLAB to depict the visualization of this region.

clear;
clc;

syms x y z;

xa=0;
xb=2;

ya=0+0*x;
yb=2-x;

za=(2-x-y)/2;
zb=4-(2*x)-(2*y);

I = int(int(int(1 + 0*z, z, za, zb), y, ya, yb), x, xa, xb)
viewSolidone(z, za, zb, y, ya, yb, x, xa, xb)
