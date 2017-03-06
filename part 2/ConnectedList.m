function L= ConnectedList(N,pos,W,No,npos)
    L=[];
    lista = [pos; npos];
    for i=1:N+No-1
        for j=i:N+No
            d= sqrt((lista(j,1)-lista(i,1))^2+(lista(j,2)-lista(i,2))^2);
            if d<= W
                L=[L;i j];
            end
        end
    end
end

