function [f] = Sparse(index, b, x)
    dim = size(b);
    n = dim(3);
    if (n ~= size(index))
        error('Number of coefficents does not match the length of index');
    elseif (n == 0)
        f = 0;
    else
        f = b(:,:,n);
        for i = (n-1: -1 : 1)
           f = b(:,:,i) + pow(x, index(i+1)-index(i) ) * f; 
        end
        f = pow(x, index(1)) * f;
    end