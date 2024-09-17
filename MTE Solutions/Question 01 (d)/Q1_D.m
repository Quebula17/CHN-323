clc;
clearvars;

addpath('../velocity/');
f = @(t) velocity(t) - 11200;

left = 1;
right = 67;

while(abs(f(left)) > 1e-4) % Bisection method
    ave = (left + right)/2;
    if (f(ave)*f(left) < 0)
        right = ave;
    else
        left = ave;
    end
end

disp('The rocket attains escape velocity of 11.2 km/s at (sec): ');
disp(left);