function [f] = pow_memo(a, b)
    global saved
    if (b == 0)
        f = 1;
    else
        if (b <= 100 && not ( isnan(saved(b)) ) ) 
            f = saved(b);
        elseif (mod(b,2) == 1)
            f = a*pow_memo(a, b-1);
        else
            temp = pow_memo(a, b / 2);
            f = temp * temp;
        end
        
        if (b <= 100)
            saved(:,:,b) = f;
        end
    end