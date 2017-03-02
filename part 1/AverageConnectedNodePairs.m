function o= AverageConnectedNodePairs(N,L)
    labels= 1:N;
    r=true;
    while r
        labels
        r=false;
        for i=1:size(L,1)
            if labels(L(i,1))~=labels(L(i,2))
                labels(labels==labels(L(i,2))) = labels(L(i,1));
                r=true;
            end
        end
     end
    o=1;
end
