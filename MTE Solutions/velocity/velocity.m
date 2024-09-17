function vel = velocity(t)
    vel = 2000*log(14*1e4/(14*1e4 - 2100*t)) - 9.8*t;
end