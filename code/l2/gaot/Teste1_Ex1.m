echo off
%
% Gráfico
%
clf             % limpa figura existe ou cria uma nova
fplot ('x+10*sin(5*x)+7*cos(4*x)',[0 9])

precisao=0.0001; % define precisão
x=0:precisao:9;

y=x+10*sin(5*x)+7*cos(4*x);

[Ymax,Indice]=max(y);

Xmax=x(Indice);

Xmax
Ymax

