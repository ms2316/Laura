function [f] = pow(a, b)
    if (b == 0)
        f = 1;
    elseif (mod(b,2) == 1)
        f = a*pow(a, b-1);
    else
        temp = pow(a, b / 2);
        f = temp * temp;
    end