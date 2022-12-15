dt = 1/1000; 
period = 2;
time = (0:dt:period-dt);

expj = exp(1j*4*pi*time);
expnj = exp(-1j*4*pi*time);
x = expj + expnj;
y = (expj - expnj)/1j;

plot(time, y, time, x);
legend('y(t)', 'x(t)');