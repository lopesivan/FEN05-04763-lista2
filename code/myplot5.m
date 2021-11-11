x = linspace(-20, 20, 1000);
y = x;

[X,Y] = meshgrid(x,y)

Z = F6(X,Y)

figure
mesh(X,Y,Z)
hold on
xlabel('x')
ylabel('y')
zlabel('z')
grid on
% This is octave file.
