function[pos,vel]= UpdateCoordinates(pos,vel,delta)
    pos = pos + vel*delta;
    vel(pos<0)= -vel(pos<0);
    N = size(pos,1);
    mask= horzcat(ones(N,1)*300,ones(N,1)*200);
    vel(pos>mask) = -vel(pos>mask);
end