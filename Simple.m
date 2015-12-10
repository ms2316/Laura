function [f] = Simple(a, x)
    dim = size(a);
    n = dim(3);
    f = 0;
    for i = (n : -1 : 1)
        f = a(:,:,i) + x * f;
    end