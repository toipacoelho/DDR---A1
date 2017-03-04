function o= AverageConnectedNodePairs(N,L,No)
    labels = [ones(1,N) zeros(1, No)]
    r=true;
    while r
        r=false;
        for i=1:size(L,1)
            if labels(L(i,1))~=labels(L(i,2))
                labels(labels==labels(L(i,2))) = labels(L(i,1));
                r=true;
            end
        end
    end
    o=sum(labels==1)/N*100
end
