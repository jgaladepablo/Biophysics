%% DEFINICIONES PARA EL PLOTTING
ax = -10; %inicio del intervalo en x
bx = 10; %fin del intervalo en x
nx = 100; %número de puntos en x
ay = ax;
by = bx;
ny = nx;
x = linspace(ax,bx,nx); %vector para dibujar
y = linspace(ay,by,ny);


%% DEFINICIONES PARA LA FUNCIÓN A DIBUJAR
% PARABOLOIDE
for i=1:nx
    for j=1:ny
        z1(i,j) = (5*x(i))^2 + (5*y(j))^2;
    end
end

%PLANO
z2 = 5*(x./x);

%% PLOTTING
figure
surf(x,y,z1)
% title('Cinética de Reacción')
% xlabel('Afinidad de reacción, A_r')
% ylabel('velocidad de reacción, v_r')
% legend('Michealis Menten','comportamiento lineal')
xmin=-10;
xmax=10;
ymin=-10;
ymax=10;
zmin=0;
zmax=1000;
axis([xmin xmax ymin ymax zmin zmax])