%200ms
t=0:0.2:4;
f=0.25;
y=2*pi*f;
s=1.5*abs(sin(y*t));
subplot(3,1,3)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]');