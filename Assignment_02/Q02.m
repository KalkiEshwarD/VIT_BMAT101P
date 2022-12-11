% Write a program in MATLAB to find the points of local extrema of the given two-variable function f(x, y) = x^3 +3x(y^2) −15x^2 −15y^2 +72x.
% Plot the surface given by z = f(x, y) and mark the points of local maxima with a red circle, the points of local minima with a green asterisk, the saddle points with a blue diamond, and the critical points where further investigation is required with a yellow plus.
% Label the axes and title the graph.
  
clc;
clear;

syms x y;

f(x,y) = x^3 + 3*(x * y^2) - 15*x^2 - 15*y^2 + 72*x;

p=diff(f,x);
q=diff(f,y);

[ax,ay] = solve(p, q);

ax = double(ax);
ay = double(ay);

r = diff(p, x);
s = diff(p, y);
t = diff(q, y);
D = r * t - s^2;

figure
fsurf(f);
legstr = {'Function Plot'};

for i = 1:size(ax)
T1 = D(ax(i), ay(i));
T2 = r(ax(i), ay(i));
T3 = f(ax(i), ay(i));

if(double(T1) == 0)
sprintf('At (%f,%f) further investigation is required', ax(i), ay(i))
legstr = [legstr, {'Case of Further investigation'}];
mkr = 'y+';

elseif (double(T1) < 0)
sprintf('The point (%f,%f) is a saddle point', ax(i), ay(i))
legstr = [legstr, {'Saddle Point'}];
mkr='bdiamond';

else
if (double(T2) < 0)
sprintf('The maximum value of the function is f(%f,%f) = %f', ax(i), ay(i), T3)
legstr = [legstr, {'Maximum value of the function'}];
mkr = 'ro';

else
sprintf('The minimum value of the function is f(%f, %f) = %f', ax(i), ay(i), T3)
legstr = [legstr, {'Minimum value of the function'}];
mkr = 'g*';

end
end

hold on
plot3(ax(i), ay(i), T3, mkr, 'Linewidth', 4);

end
legend(legstr, 'Location', 'Best');
xlabel('X-Axis')
ylabel('Y-Axis')
title('Graph of Question 02');
