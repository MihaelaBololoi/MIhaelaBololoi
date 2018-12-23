T=40;
f=1/T;
w=2*pi*f;
pas=T/10000;
t = 0:pas:4*T;
N=50;
s=abs(sawtooth(w*t,0.5));
%semnalul triunghiular s de perioada T*4
for n = -N:N
    C(n+N+1) = 1/T * integral(@(t)(abs(sawtooth(w*t,0.5))).*exp(-1j*n*w*t),0,T);
    %calculam coeficientii
end
sr = 0;
for n = -N:N
    sr = sr + C(n+N+1)*exp(1j*n*w*t);
    %reconstruim semnalul
end
figure(1);
hold on
plot(t,real(sr),'-.r',t,imag(sr),'-.r');
%afisam pe acelasi grafic semnalul s si semnalul refacut sr
plot(t,s);
%afisam amplitudinile
xlabel("Timpul");
ylabel("Semnal(t) si semnal.recompus(t)");
title("Semnalul initial si cel recompus")
hold off
figure(2);
hold on
stem((-N:N)*w,2*abs(C));
xlabel('Pulsatia w');
ylabel('Amplitudinile Ak');
title('Spectrul de Amplitudini');
hold off