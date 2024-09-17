clc;
clearvars;

addpath('../velocity');

time = 0:30;
velocity_data = [0 18 38 61 79 97 118 139 204 231 240 292 300 314 389 436 453 487 504 531 552 620 642 675 682 716 803 815 888 901 967];

plot(time, velocity_data);
hold on

velocity_theoretical = zeros(1, length(time));
for i = 0:30
    velocity_theoretical(i+1) = velocity(i);
end
plot(time, velocity_theoretical);

rmpath('../velocity/');

xlabel('Time (s)');
ylabel('Velocity (m/s)');
legend('Experimental Data', 'Theoretical Values');

rm_error = sqrt(mean((velocity_data - velocity_theoretical).^2));
disp(rm_error);
