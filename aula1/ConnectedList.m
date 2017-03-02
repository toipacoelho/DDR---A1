function L= ConnectedList(N,pos,W)
    L=[];
    for i=1:N
        for j=i+1:N
            d= sqrt((pos(j,1)-pos(i,1))^2+(pos(j,2)-pos(i,2))^2);
            if d<= W
                p= [i j];
                L=[L;p];
            end
        end
    end
    L
end

