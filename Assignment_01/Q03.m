% Write a program in MATLAB to find the area between two curves f(x) and g(x), assuming that they intersect at two points.
% Hence find the area between the curves f(x) = x^3 − 2x^2 − 2x and g(x) = x.
% Plot the graphs of f and g on the same plot window and label both the curves, as well as their points of intersection.
  
clear;
clc;

syms x;

f(x) = x^3 - 2*(x^2) - 2*x;
g(x) = x;

X = solve(f(x) == g(x) ,x);

l = X(1);
m = X(2);
D = linspace(l, m, 1000);

F = double(f(D));
G = double(g(D));

Area = int(abs(f(x) - g(x)), x, l, m);

disp("The functions intersect at: ");
disp(X);

disp('The area under f(x) and g(x) is: ')
disp(abs(Area))

Graph = tiledlayout(1,1);
title(Graph,"Graph of question 2")

nexttile
plot(D, F, D, G);
legend('f(x)','g(x)');
xlabel('X-axis');
ylabel('Y-axis');
