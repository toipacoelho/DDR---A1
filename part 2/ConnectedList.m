function L= ConnectedList(N,pos,W,No,npos)
    W=W^2;
    L=[];
    lista = [pos; npos];
    for i=1:N
        for j=i:N+No
            d=(lista(j,1)-lista(i,1))^2+(lista(j,2)-lista(i,2))^2;
            %tirar sqrt
            if d<= W
                L=[L;i j];
            end
        end
    end
end

