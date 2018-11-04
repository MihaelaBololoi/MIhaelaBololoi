%am modificat perioada semnalului la 6s, deoarece nu am putut obtine panta
%de 1V/s
%2ms
hold on,xlabel('t [s]'),ylabel('A [V]')
x = 0: 0.002: 3;
y = -x+1;
subplot(3,1,1)
plot(x, y, 'b')
x=3:0.002:6;
y = x-5;
plot(x,y,'b'),grid