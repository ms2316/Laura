function [f] = quickSort(index, b)
    f = qsort(index, b, 1, size(index));
    