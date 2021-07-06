%% DEFINICIONES PARA EL PLOTTING
ax = 0.0; %inicio del intervalo en x
bx = 10; %fin del intervalo en x
nx = 100; %n�mero de puntos en x
x = linspace(ax,bx,nx); %vector para dibujar


%% DEFINICIONES PARA LA FUNCI�N A DIBUJAR
% MICHAELIS MENTEN, donde x es Sustrato e y es velocidad de reacci�n
v_max = 5; %velocidad m�xima
K_m = 3; %constante de reacci�n
y1 = (v_max * x)./(K_m + x); %ojo, se usa ./ para que divida punto a punto

%RECTA
y2= v_max*x/K_m;

%PAR�BOLA
%y3= x.^2;

%% PLOTTING
figure
plot(x,y1,x,y2)
title('Cin�tica de Reacci�n')
xlabel('Afinidad de reacci�n, A_r')
ylabel('velocidad de reacci�n, v_r')
legend('Michealis Menten','comportamiento lineal')
xmin=0;
xmax=10;
ymin=0;
ymax=5;
axis([xmin xmax ymin ymax])