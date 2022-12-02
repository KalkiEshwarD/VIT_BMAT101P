% Write a program in MATLAB which can input two functions, f(x) and g(x), and a domain given by the user, and can evaluate the area between the curves f(x) and g(x).
% Using this, evaluate the area between the curves f(x) = x^2 − 1 and g(x) = x − 1 over the region [0, 1].
% Also plot the graphs of f and g on the same plot window and label both the curves, as well as their points of intersection.
  
clear;
clc;

syms x;

f(x) = input("Enter definition of f(x): ");
g(x) = input("Enter definition of g(x): ");

Domain = input("Enter the domain in the form [a,b]: ");
l = Domain(1);
m = Domain(2);
D = linspace(l, m, 1000);

F = double(f(D));
G = double(g(D));

Total_Area = abs(int(f(x) - g(x), x, l, m));
disp('The area under f(x) and g(x) is: ')
disp(Total_Area)

X = solve(f(x) == g(x) ,x);

disp("The functions intersect at: ");
disp(X);

Graph = tiledlayout(1,1);
title(Graph,"Graph of question 2")

nexttile
plot(D, F, D, G);
legend('f(x)','g(x)');
xlabel('X-axis');
ylabel('Y-axis');
