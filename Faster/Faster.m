function [f] = Faster(index, b, x)
    dim = size(b);
    n = dim(3);
    
    global saved
    saved = NaN(dim(1),dim(2),100);
    
    if (n ~= size(index))
        error('Number of coefficents does not match the length of index');
    elseif (n == 0)
        f = 0;
    else
        f = b(:,:,n);
        for i = (n-1: -1 : 1)
           f = b(:,:,i) + pow_memo(x, index(i+1)-index(i) ) * f; 
        end
        f = pow_memo(x, index(1)) * f;
    end