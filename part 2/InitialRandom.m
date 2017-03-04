function [pos,vel, npos]= InitialRandom(N,S,No)
    pos = [300*rand(N,1) 200*rand(N,1)];
    abs_val = S*rand(N,1);
    angle_val= 2*pi*rand(N,1);
    vel= [abs_val.*cos(angle_val) abs_val.*sin(angle_val)];
    switch No
        case 1         
            npos= [150 100];
        case 2
            npos= [75 100;
                225 100];
        case 3
            npos= [50 100;
                150 100;
                250 100];                
        case 4 
            npos= [75 150;
                225 150;
                75 50;
                225 50];
    end
end