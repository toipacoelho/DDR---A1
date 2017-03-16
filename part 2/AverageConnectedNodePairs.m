function o= AverageConnectedNodePairs(N,L,No)
    labels = [zeros(1,N) ones(1, No)];
    r=true;
    while r
        r=false;
        for i=1:size(L,1)
            if labels(L(i,1))~=labels(L(i,2))
                labels(L(i,2)) = 1;
                labels(L(i,1)) = 1;
                r=true;
            end
        end
    end
    o=(sum(labels)-No)/N*100;
end
