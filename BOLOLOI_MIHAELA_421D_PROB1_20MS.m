%20 ms
t=0:0.02:4;%sunt afisate 2 perioade
f=0.5;
y=2*pi*f;
duty=25;
nivel=0.25;
procent=0.75;
s=(procent*square(y*t,duty))-nivel;
subplot(3,1,2)
plot(t,s),grid,xlabel('t [s]'),ylabel('A [V]')