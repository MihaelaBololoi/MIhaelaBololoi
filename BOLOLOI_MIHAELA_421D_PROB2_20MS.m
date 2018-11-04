%20ms
hold on,xlabel('t [s]'),ylabel('A [V]')
x = 0: 0.02: 3;
y = -x+1;
subplot(3,1,2)
plot(x, y, 'b')
x=3:0.02:6;
y = x-5;
plot(x,y,'b'),grid