% Name: code/myplot5.m
% Description:  quinta tentativa
x = linspace(-20, 20, 1000);
y = x;

[X,Y] = meshgrid(x,y)

Z = arrayfun(@(x,y) F6(x,y), X, Y)

figure
mesh(X,Y,Z)
hold on
xlabel('x')
ylabel('y')
zlabel('z')
grid on
