function L= ConnectedList(N,pos,W)
    W=W^2;
    L=[];
    for i=1:N-1
        for j=i+1:N
            d= (pos(j,1)-pos(i,1))^2+(pos(j,2)-pos(i,2))^2;
            if d<= W
                L=[L;i j];
            end
        end
    end
end

