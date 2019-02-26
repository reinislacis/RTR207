Vm=[1 3 5 5.5 9];
Im=[10 35 55 60 190;
    12 36 58 59 199;
    8 25 50 61 195]*1e-3;

Imv=mean(Im);

V=min(Vm):0.01:max(Vm);
C=polyfit(Vm, Imv, 3) %izvēlas polinoma kārtu
%[1 2 3];
I=polyval(C,V);%C(1)*V.^2 + C(2)*V.^1 + C(3)*V.^0;
plot(Vm,Imv, 'k*',V,I)

xlabel('U,V')
ylabel('I, A')
title('Grafiks')
grid on