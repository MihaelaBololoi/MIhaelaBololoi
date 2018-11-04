%200ms
hold on,xlabel('t [s]'),ylabel('A [V]')
x = 0: 0.2: 3;
y = -x+1;
subplot(3,1,3)
plot(x, y, 'b')
x=3:0.2:6;
y = x-5;
plot(x,y,'b'),grid