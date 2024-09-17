clc;
clearvars;

time = 0:30;
velocity_data = [0 18 38 61 79 97 118 139 204 231 240 292 300 314 389 436 453 487 504 531 552 620 642 675 682 716 803 815 888 901 967];

dt = time(2) - time(1);

acceleration = zeros(size(velocity_data));

for i = 2:length(velocity_data)-1
    acceleration(i) = (velocity_data(i+1) - velocity_data(i-1)) / (2 * dt); % centered-difference approximation
end

acceleration(1) = (velocity_data(2) - velocity_data(1)) / dt;
acceleration(end) = (velocity_data(end) - velocity_data(end-1)) / dt;

disp(acceleration);