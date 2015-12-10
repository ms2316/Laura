function [ outI, outC ] = Unsorted(index, cf)
    dim = size(cf);
    n = length(index);
    outI = myMsort(index);
    outC = zeros(dim(1),dim(2),dim(3));
    for i = (1:n)
        l = 1; r = n;
        while (l < r)
           mid = floor((l + r)/2);
           if outI(mid) < index(i)
               l = mid + 1;
           else
               r = mid;
           end
        end
        outC(:,:,l) = cf(:,:,i);
    end