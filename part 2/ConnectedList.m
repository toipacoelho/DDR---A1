function L= ConnectedList(N,pos,W,No,npos)
    L=[];
    for i=1:N-1
        for j=i:No
            d= sqrt((npos(j,1)-pos(i,1))^2+(npos(j,2)-pos(i,2))^2);
            if d<= W
                L=[L;i j];
            end
        end
    end
end

