% function implementation
% z = f(x,y)
%function [sol,val] = gaMichEval(sol,options)
function [x,y,z]= F6(x,y)
    n = (sin(sqrt(x.^ 2 + y.^ 2)).^ 2 - 0.5);
    d = (1 + 0.001 * (x.^ 2 + y.^ 2) ).^ 2;
    z = 0.5 - n./d;
end
% This is octave file.
