% Name: code/myplot1.m
% Description:  Primeira tentativa

% Nossos vetores X e Y são compostos pelos valores de uma
% progressão aritimética iniciada em -100, terminada em 100 com
% uma razão de 0.5.
% a[inicial] = -100
% a[final]   = 100
% r = 0.5
x = [-100:0.5:100];
y = [-100:0.5:100];
z = arrayfun(@(x,y) F6(x,y), x, y)
%   ^^^^^^^^ ^^^^   ^^^^^^   ^  ^
%   |        |      |        |  |
%   |        |      |        |  +-a segunda entrada vetorial
%   |        |      |        +-a primeira entrada vetorial
%   |        |      +-a função que será mapeada
%   |        +-definição de entradas
%   +-função mapeadora "MAP"
figure
plot3(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
