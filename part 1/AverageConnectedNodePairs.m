function o= AverageConnectedNodePairs(N,L)
    labels= 1:N;
    for i=1:size(L,1)
        if labels(L(i,1))~=labels(L(i,2))
            labels(labels==labels(L(i,2))) = labels(L(i,1));
        end
    end
    [a,b]=hist(labels,unique(labels));
    soma=sum(a.*(a-1)/2);
    o = soma/nchoosek(N, 2)*100;
end
