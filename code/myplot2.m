% Primeira tentativa

x = [-1:0.00005:1];
y = [-1:0.00005:1];
z = F6(x,y);

figure
hold on
plot3(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
grid on
%axis('equal')
