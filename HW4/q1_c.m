dt = 1/1000; 
period = 2;
time = (0:dt:period-dt);

fz = 8*cos(2*pi*time - pi/2);
sz = 8*cos(2*pi*time - pi);
tz = 8*cos(2*pi*time - 3*pi/2);

plot(time, fz, time, sz, time, tz);
legend('8cos(2\pit-\pi/2)', '8cos(2\pit-\pi)', '8cos(2\pit-3\pi/2)')