% Name: F6.m
% Description: A função F6 foi rescrita de modo a atender as espectativas da
%
%                                  2    2  2
%                        sin(sqrt(x  + y ))  - 0.5
%   z = F6(x,y) =  0.5 - -------------------------
%                                      2    2  2
%                         (1 + 0.001 (x  + y ))
% biblioteca gaot
% Input:
%  sol: input [x y]
%  options: input vector
%  sol: output [x y]
%  val: output z
%
function [sol,val] = F6(sol,options)

x=sol(1);
y=sol(2);
val = 0.5 - (sin(sqrt(x^2 + y^2))^2 - 0.5)/(1 + 0.001 * (x^2 + y^2) )^2;

