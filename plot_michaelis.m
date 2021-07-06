%% DEFINICIONES PARA EL PLOTTING
ax = 0.0; %inicio del intervalo en x
bx = 10; %fin del intervalo en x
nx = 100; %número de puntos en x
x = linspace(ax,bx,nx); %vector para dibujar


%% DEFINICIONES PARA LA FUNCIÓN A DIBUJAR
% MICHAELIS MENTEN, donde x es Sustrato e y es velocidad de reacción
v_max = 5; %velocidad máxima
K_m = 3; %constante de reacción
y1 = (v_max * x)./(K_m + x); %ojo, se usa ./ para que divida punto a punto

%RECTA
y2= v_max*x/K_m;

%PARÁBOLA
%y3= x.^2;

%% PLOTTING
figure
plot(x,y1,x,y2)
title('Cinética de Reacción')
xlabel('Afinidad de reacción, A_r')
ylabel('velocidad de reacción, v_r')
legend('Michealis Menten','comportamiento lineal')
xmin=0;
xmax=10;
ymin=0;
ymax=5;
axis([xmin xmax ymin ymax])