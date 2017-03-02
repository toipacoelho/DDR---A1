function [pos,vel]= InitialRandom(N,S)
    pos = [300*rand(N,1) 200*rand(N,1)];
    abs_val = S*rand(N,1);
    angle_val= 2*pi*rand(N,1);
    vel= [abs_val.*cos(angle_val) abs_val.*sin(angle_val)];
end