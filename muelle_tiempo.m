clear all

%% DEFINICIONES PARA EL PLOTTING
ax = 0; %inicio del intervalo en x
bx = 10; %fin del intervalo en x
nx = 100; %número de puntos en x
ay = ax;
by = bx;
ny = nx;
x = linspace(ax,bx,nx); %vector para dibujar
y = linspace(ay,by,ny);


%% DEFINICIONES PARA LA FUNCIÓN A DIBUJAR
% MUELLE
t = linspace(ax,bx,nx);
x = sin( 5.*t );
y = sin( 5.*t + pi()/2 );
t2 = t + 1;

%% PLOTTING
figure
plot3(t,x,y,t2,x,y)
title('Evolución de XY con el tiempo - Muelle')
xlabel('t')
ylabel('X')
zlabel('Y')
% legend('Michealis Menten','comportamiento lineal')
% xmin=0;
% xmax=10;
% ymin=xmin;
% ymax=xmax;
% zmin=-1;
% zmax=1;
% axis([xmin xmax ymin ymax zmin zmax])