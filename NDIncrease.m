%R.Borumandi(alias name in net stackprogramer)
clc
clear
disp('plot');
msgbox('programed by R.Borumandi rahim.bormandi71@gmail.com or stackprogramer@gmail.com');
%definition of constant
ND=10^22;%1/m^3
qe=1.602*10^(-19);
Eg=1.11*qe;%ev
K=1.38*10^(-23);%ev 
h=6.63*10^(-34);%ev
m0=9.109*10^-31;
me=1.08*m0;
mh=.56*m0;
gD=25;
Ec=1.00000005*qe;
ED=1*qe;
%Defintion of Density of electron per ND versus Temprature

n_final=@(T) [[(((2*((2*pi*me*K*T)/h^2)^1.5)/gD)*exp(-1*(Ec-ED)/K*T))/2*((1+4*ND/(((2*((2*pi*me*K*T)/h^2)^1.5)/gD)*exp(-1*(Ec-ED)/K*T)))^.5-1)]+...
    [ND/2+((ND/2)^2+((2*((2*pi*me*K*T)/h^2)^1.5)*(2*((2*pi*mh*K*T)/h^2)^1.5)*exp(-1*Eg/(K*T))))^.5]]/(2*ND);
subplot(4,1,1);
fplot(n_final,[0,700]);
title(' Density of electron per (ND=10e16) versus Temprature')
%Defintion of Density of electron per ND versus Temprature
ND=10^23;%1/m^3
n_final=@(T) [[(((2*((2*pi*me*K*T)/h^2)^1.5)/gD)*exp(-1*(Ec-ED)/K*T))/2*((1+4*ND/(((2*((2*pi*me*K*T)/h^2)^1.5)/gD)*exp(-1*(Ec-ED)/K*T)))^.5-1)]+...
    [ND/2+((ND/2)^2+((2*((2*pi*me*K*T)/h^2)^1.5)*(2*((2*pi*mh*K*T)/h^2)^1.5)*exp(-1*Eg/(K*T))))^.5]]/(2*ND);
subplot(4,1,2);
fplot(n_final,[0,1000]);
title(' Density of electron per (ND=10e17) versus Temprature')


%Defintion of Density of electron per ND versus Temprature
ND=10^24;%1/m^3
n_final=@(T) [[(((2*((2*pi*me*K*T)/h^2)^1.5)/gD)*exp(-1*(Ec-ED)/K*T))/2*((1+4*ND/(((2*((2*pi*me*K*T)/h^2)^1.5)/gD)*exp(-1*(Ec-ED)/K*T)))^.5-1)]+...
    [ND/2+((ND/2)^2+((2*((2*pi*me*K*T)/h^2)^1.5)*(2*((2*pi*mh*K*T)/h^2)^1.5)*exp(-1*Eg/(K*T))))^.5]]/(2*ND);
subplot(4,1,3);
fplot(n_final,[0,1300]);
title(' Density of electron per (ND=10e18) versus Temprature')
%Defintion of Density of electron per ND versus Temprature
ND=10^25;%1/m^3
n_final=@(T) [[(((2*((2*pi*me*K*T)/h^2)^1.5)/gD)*exp(-1*(Ec-ED)/K*T))/2*((1+4*ND/(((2*((2*pi*me*K*T)/h^2)^1.5)/gD)*exp(-1*(Ec-ED)/K*T)))^.5-1)]+...
    [ND/2+((ND/2)^2+((2*((2*pi*me*K*T)/h^2)^1.5)*(2*((2*pi*mh*K*T)/h^2)^1.5)*exp(-1*Eg/(K*T))))^.5]]/(2*ND);
subplot(4,1,4);
fplot(n_final,[0,2100]);
title(' Density of electron per (ND=10e19) versus Temprature')
