% Write a program in MATLAB to investigate the following:
% (a) Depict the two-dimensional vector field for the vector-valued function F̄ (x, y) = 2xî + 3yĵ.
% (b) Find and visualize the gradient of the function f (x, y) = x^*y^3 − 4y using MATLAB.
% (c) Find and visualize the divergence of the vector field f (x, y) = [xy, x2].
% (d) Find and visualize the curl of the vector field f (x, y, z) = yzî + 3xzĵ + zk̂.

clear;
clc;

syms x y z;

% 
% % Part (a)
% % Define the vector field F̄ (x, y) = 2xî + 3yĵ
% Fx = @(x, y) 2*x;
% Fy = @(x, y) 3*y;
% 
% % Generate a grid of points
% [x, y] = meshgrid(-2:0.1:2, -2:0.1:2);
% 
% % Calculate the components of the vector field at each point
% u = Fx(x, y);
% v = Fy(x, y);
% 
% % Plot the vector field
% quiver(x, y, u, v);

% % Part (b)
% % Define the function f = (x^2)(y^3) - 4y
% f = (x^2)*(y^3) - 4*y;
% 
% % % Calculate the gradient of f
% grad = gradient(f, [x, y]);
% P(x, y) = grad(1);
% Q(x, y) = grad(2);
% 
% % % Generate a grid of points
% x = linspace(-2, 2, 10);
% y = x;
% [X, Y] = meshgrid(x, y);
% U = P(X, Y);
% V = Q(X, Y);
% 
% % % Plot the gradient field
% quiver(X, Y, U, V, 1)
% axis on
% xlabel('x'); ylabel('y')
% hold on
% fcontour(f, [-2, 2])

% % Part(c)
% f = [x*y, x^2];
% 
% div(x, y) = divergence(f, [x, y]);
% P(x, y) = f(1);
% Q(x, y) = f(2);
% x = linspace(-4, 4, 20);
% y = x;
% [X, Y] = meshgrid(x, y);
% U = P(X, Y);
% V = Q(X, Y);
% figure
% pcolor(X, Y, div(X, Y));
% shading interp
% hold on;
% quiver(X, Y, U, V, 1)
% axis on
% hold off;
% title('Vector field of F(x,y)=[xy,x^2]');

% % Part (d)
% f = [y*z, 3*x*z, z];
% 
% % Components of vector f
% P(x, y, z) = f(1);
% Q(x, y, z) = f(2);
% R(x, y, z) = f(3);
% 
% % Calculating curl
% crl = curl(f,[x,y,z]);
% 
% % Components of curl(f)
% C1(x, y, z) = crl(1);
% C2(x, y, z) = crl(2);
% C3(x, y, z) = crl(3);
% 
% x = linspace(-4, 4, 10);
% y = x;
% z = x;
% 
% [X, Y, Z] = meshgrid(x, y, z);
% 
% U = P(X, Y, Z);
% V = Q(X, Y, Z);
% W = R(X, Y, Z);
% 
% CR1 = C1(X, Y, Z);
% CR2 = C2(X, Y, Z);
% CR3 = C3(X, Y, Z);
% 
% figure;
% subplot(1, 2, 1);
% quiver3(X, Y, Z, U, V, W);
% title('3-D view of vector field');
% subplot(1, 2, 2);
% quiver3(X, Y, Z, CR1, CR2, CR3);
% title('3-D view of curl');
