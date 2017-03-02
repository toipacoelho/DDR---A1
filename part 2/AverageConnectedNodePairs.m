function o= AverageConnectedNodePairs(N,L)
    labels= 1:N;
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
    [a,b]=hist(labels,unique(labels));
    sum =0;
    for i=1:size(a, 2)
       if a(i)>1
           sum = sum + nchoosek(a(i), 2);
       end
    end
    o = sum/nchoosek(N, 2)*100;
end
