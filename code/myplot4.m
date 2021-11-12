% Name: code/myplot4.m
% Description:  quarta tentativa
x = linspace(-1, 1, 1000);
y = x;

[X,Y] = meshgrid(x,y)
% A função meshgrid é usada para criar uma grade retangular a partir
% de duas matrizes unidimensionais fornecidas que representam a
% indexação cartesiana ou indexação de matriz.
%
% Considere a figura acima com o eixo X variando de -4 a 4 e o eixo
% Y variando de -2 a 2. Portanto, há um total de (9 * 5) = 45
% pontos marcados na figura, cada um com uma coordenada X e uma
% coordenada Y. Para qualquer linha paralela ao eixo X, as
% coordenadas X dos pontos marcados respectivamente são -4, -3, -2,
% -1, 0, 1, 2, 3, 4. Por outro lado, para qualquer linha
% paralelo ao eixo Y, as coordenadas Y dos pontos marcados de
% baixo para cima são -2, -1, 0, 1, 2.
% A meshgrid retorna duas matrizes bidimensionais que representam as
% coordenadas X e Y de todos os pontos.
%
%
%                       Y
%                        ^
%                      2 +    *--*--*--*--*--*--*--*--*
%                        |    |  |  |  |  |  |  |  |  |
%                      1 +    *--*--*--*--*--*--*--*--*
% 2+2+1 = 5 pontos       |    |  |  |  |  |  |  |  |  |
%                      0 +    *--*--*--*--*--*--*--*--*
%                        |    |  |  |  |  |  |  |  |  |
%                     -2 +    *--*--*--*--*--*--*--*--*
%                        |
%                        |
%                        +----+--+--+--+--+--+--+--+--+---> X
%                            -4 -3 -2 -1  0  1  2  3  4
%
%                            4+4+1 = 9 pontos
%
%        grade de 5*9 = 45 pontos
%
%
%
Z = arrayfun(@(x,y) F6(x,y), X, Y)
%   ^^^^^^^^ ^^^^   ^^^^^^   ^  ^
%   |        |      |        |  |
%   |        |      |        |  +-a segunda entrada vetorial
%   |        |      |        +-a primeira entrada vetorial
%   |        |      +-a função que será mapeada
%   |        +-definição de entradas
%   +-função mapeadora "MAP"

figure
mesh(X,Y,Z)
hold on
xlabel('x')
ylabel('y')
zlabel('z')
grid on
