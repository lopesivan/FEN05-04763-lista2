% function implementation
% z = f(x,y)
function z = F6(x,y)
    n = (sin(sqrt(x.^ 2 + y.^ 2)).^ 2 - 0.5);
    d = (1 + 0.001 * (x.^ 2 + y.^ 2) ).^ 2;
    z = 0.5 - n./d;
end
