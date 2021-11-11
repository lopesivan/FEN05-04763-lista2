function [sol,val] = f2(sol,options)
val = 0.5 - (sin(sqrt(sol(1)^2 + sol(2)^2))^2 - 0.5)/(1 + 0.001 * (sol(1)^2 + sol(2)^2) )^2;

% > f := (x,y) -> 0.5 - (sin(sqrt(x^2 + y^2))^2 - 0.5)/(1 + 0.001 * (x^2 + y^2) )^2;



% Matlab =====================================================================
% val = 21.5 + sol(1) * sin(4*pi*sol(1)) + sol(2)*sin(20*pi*sol(2));
% ~
% 200 41.050325
% x =

%   -9.6255   9.9250
% maple ======================================================================
% > f := (x,y) -> 21.5 + x * sin(4*Pi*x) + y*sin(20*Pi*y);
%                  f := (x, y) -> 21.5 + x sin(4 x Pi) + y sin(20 Pi y)

% > f(-9.6255,9.9250);
%                                      41.05031000

% > k := maximize(f(x,y),x=-10..10, y=-10..10);
% memory used=4135.1MB, alloc=232.3MB, time=38.60
% memory used=4328.5MB, alloc=232.3MB, time=40.33
% memory used=4491.6MB, alloc=232.3MB, time=41.72
% memory used=4683.1MB, alloc=232.3MB, time=43.44
% memory used=4876.7MB, alloc=232.3MB, time=45.14
% memory used=5070.0MB, alloc=232.3MB, time=46.85
% memory used=5262.6MB, alloc=232.3MB, time=48.61
% memory used=5454.8MB, alloc=232.3MB, time=50.32
% memory used=5646.9MB, alloc=232.3MB, time=52.03
% memory used=5799.6MB, alloc=232.3MB, time=53.33
% memory used=5943.2MB, alloc=232.3MB, time=54.55
%                                    k := 41.05034171

% val = 0.5 - (sin(sqrt(sol(1)^2 + sol(2)^2))^2 - 0.5)/(1 + 0.001 * (sol(1)^2 + sol(2)^2) )^2;
%
%

%bounds = [-3 12.1; 4.1 5.8];
%21.5 + x * sin(4*pi*x) + y*sin(20*pi*y);
%
%NOTA: no maple
%maximize(x*sin(10*pi*x)+1,x=-1..2);

%maximize(21.5 + x * sin(4*pi*x) + y*sin(20*pi*y),x=-3..12.1, y=4.1..5.8);
