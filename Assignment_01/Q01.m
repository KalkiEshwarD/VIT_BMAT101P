% Find the points and value of absolute extrema for the function f given by f(x) = x^3 − 2x^2 + 1 defined over [−4, 4].
% Plot the graph of f and mark the points of absolute extrema on the graph with a green circle.
% Label the X-axis and the Y -axis and title the graph.

clear;
clc;

syms x;

Graph = tiledlayout(1,1);
title(Graph,"Graph of question 1")

D = linspace(-4, +4, 10000);
f(x) = x^3 - 2*(x^2) + 1;
F = double(f(D));

nexttile
title("Plot");
plot(D, F);
xlabel('X-axis')
ylabel('Y-axis')

Xmax = vpasolve(f(x) == max(f(D)), x);
Xmin = vpasolve(f(x) == min(f(D)), x);

disp("Extrema are at: ")
disp("Absolute Minimum")
disp([Xmin(1), min(f(D))])
disp("Absolute Maximum")
disp([Xmax(1), max(f(D))])

hold on 
plot(Xmin(1),min(f(D)), 'O');
t_min = text(Xmin(1),min(f(D)), "Absolute Minimum");
t_min(1).FontSize = 6;
plot(Xmax(1),max(f(D)), 'O');
t_max = text(Xmax(1),max(f(D)), "Absolute Maximum");
t_max(1).FontSize = 6;
t_max(1).HorizontalAlignment = 'right';
hold off
