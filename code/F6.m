% Name: F6.m
% Description: Implenatção da função F6
%                                  2    2  2
%                        sin(sqrt(x  + y ))  - 0.5
%   z = F6(x,y) =  0.5 - -------------------------
%                                      2    2  2
%                         (1 + 0.001 (x  + y ))
%
%
%   F6(0,0);
%                   1.000000000
function z = F6(x,y)
    % inputs:
    %   x - é um escalar
    %   y - é um escalar
    % output:
    %   z - é um escalar
	z = 0.5 - (sin(sqrt(x^2 + y^2))^2 - 0.5)/(1 + 0.001 * (x^2 + y^2) )^2;
end
