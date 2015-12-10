function [out1 , out2] = qsort(ind, cf, l, r)
    k = l;
    j = r;
    mid = ind( floor( (l+r)/2 ) );
    while (k <= l) do
        while (ind(k) < mid)
            k = k + 1;
        end
        while (ind(j) > mid)
            j = j - 1;
        end
        if (k <= j)
            w = ind(k);
            ind(k) = ind(j);
            ind(j) = w;
            
            tmp = cf(k);
            cf(k) = cf(j);
            cf(j) = tmp;
            
            k = k + 1;
            j = j -1;
        end
    end
    if (l < j)
        qsort(ind, cf, l, j);
        
        
    end