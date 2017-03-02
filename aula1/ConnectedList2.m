function L= ConnectedList2(N,pos,W)
	%Computes a matrix ‘L’ of 2 columns with the node pairs such that their distance is not higher than W.
    toDrawX = zeros(1,10000);
    toDrawY = zeros(1,10000);
    count = 1;
    L = reshape(1:N, [N,1]);
    repeat = 1;
    while repeat == 1
        repeat = 0;
        for i = 1:N
            D = GetDistance(pos(i,:), pos(i+1:end,:));
            %tmp = D < W;
            %toDrawX
            
            for j = i+1:N
                if D(j-i) < W
                   toDrawX(:,count:count+2) = [pos(i,1) pos(j,1) nan];
                   toDrawY(:,count:count+2) = [pos(i,2) pos(j,2) nan];
                   count = count+3;
                   if L(j) ~= L(i)
                       L(L == L(j)) = L(i);
                       repeat = 1;
                   end
                end
            end
        end
    end
    plot(toDrawX(:,1:count), toDrawY(:,1:count))
end

function dist = GetDistance(posO, A)
    %gData1 = gpuArray(A(:,1));
    %gData2 = gpuArray(A(:,2));
    %dist = arrayfun(@(x,y) sqrt((posO(1,1) - x)^2 + (posO(1,2) - y)^2), gData1, gData2);
    dist = sqrt((posO(1,1) - A(:,1)).^2 + (posO(1,2) - A(:,2)).^2);
end