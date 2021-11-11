% Name: code/myplot2.m
% Description:  Segunda tentativa

% Nossos vetores X e Y são compostos pelos valores de uma
% progressão aritimética iniciada em -1, terminada em 1 com
% uma razão de 0.00005.
% a[inicial] = -1
% a[final]   = 1
% r = 0.5
x = [-1:0.00005:1];
y = [-1:0.00005:1];
z = arrayfun(@(x,y) F6(x,y), x, y)
%   ^^^^^^^^ ^^^^   ^^^^^^   ^  ^
%   |        |      |        |  |
%   |        |      |        |  +-a segunda entrada vetorial
%   |        |      |        +-a primeira entrada vetorial
%   |        |      +-a função que será mapeada
%   |        +-definição de entradas
%   +-função mapeadora "MAP"

figure
hold on
plot3(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
grid on
%axis('equal')
