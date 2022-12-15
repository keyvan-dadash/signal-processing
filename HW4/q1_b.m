dt = 1/1000; 
period = 2;
time = (0:dt:period-dt);

fw = 3*cos(8*pi*time - pi/2);
sw = 3*cos(8*pi*time - pi);
tw = 3*cos(8*pi*time - 3*pi/2);

plot(time, fw, time, sw, time, tw);
legend('3cos(8\pit-\pi/2)', '3cos(8\pit-\pi)', '3cos(8\pit-3\pi/2)')