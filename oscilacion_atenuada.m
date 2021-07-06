clear all
%% DEFINICIONES PARA EL PLOTTING
ax = 0.0; %inicio del intervalo en x
bx = 10; %fin del intervalo en x
nx = 100; %número de puntos en x
t = linspace(ax,bx,nx); %vector para dibujar


%% DEFINICIONES PARA LA FUNCIÓN A DIBUJAR
% Oscilación atenuada
a=-0.5;
b=100;
x1 = exp(a.*t).*cos(2*pi()*b.*t) + 0.5; %ojo, se usa ./ para que divida punto a punto

%% PLOTTING
figure
plot(t,x1)
title('Oscilación atenuada')
xlabel('tiempo, t')
ylabel('Concentración, X(t)')
xmin=0;
xmax=10;
ymin=0;
ymax=1.2;
axis([xmin xmax ymin ymax])