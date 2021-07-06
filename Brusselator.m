clear all

%% DEFINICIONES PARA EL PLOTTING
% Para plot del estado estacionario como solución gráfica
ax1 = 0; %inicio del intervalo en x
bx1 = 10; %fin del intervalo en x
nx1 = 100; %número de puntos en x
ay1 = ax1;
by1 = bx1;
ny1 = nx1;
x = linspace(ax1,bx1,nx1); %vector para dibujar

% Para diagrama de estabilidad
ax2 = -1; %inicio del intervalo en x
bx2 = 1; %fin del intervalo en x
nx2 = 100; %número de puntos en x
ay2 = ax2;
by2 = bx2;
ny2 = nx2;
A = linspace(ax2,bx2,nx2);
% y = linspace(ay,by,ny);

% Para el dibujo de las isoclinas
ax3 = 0; %inicio del intervalo en x
bx3 = 10; %fin del intervalo en x
nx3 = 100; %número de puntos en x
ay3 = ax3;
by3 = bx3;
ny3 = nx3;
xiso = linspace(ax3,bx3,nx3); %vector para dibujar

% Para diagrama de bifurcación
ax4 = 0; %inicio del intervalo en x
bx4 = 3; %fin del intervalo en x
nx4 = 100; %número de puntos en x
ay4 = ax3;
by4 = bx3;
ny4 = nx3;
Bcont = linspace(ax4,bx4,nx4); %vector para dibujar

%% DEFINICIONES PARA LA FUNCIÓN A DIBUJAR
% ESTADO ESTACIONARIO (Comprobación gráfica de que hay una única solución)
A1 = 2;
B1 = 1;
y1 = (x.*(B1+1) - A1)./x.^2;
y2 = B1./x;
xss = A1;
yss = B1/A1;

% CONDICIONES DE ESTABILIDAD (Obtenidas a partir del estudio de Lambda)
Breal1 = (1-A).^2;
Breal2 = (1+A).^2;
Bestab = A.^2 + 1;

%ISOCLINAS
% Se ha fijado A en 0.5 y se han tomado diferentes valores de B
% representativos de cada comportamiento para luego dibujar las isoclinas 0
% e infinito
Aiso = 0.5;
Biso1 = 0.2; %estable
Biso2 = 1; %estable oscilatorio
Biso3 = 1.25; %estable según Lyapounov
Biso4 = 2; %inestable oscilatorio
Biso5 = 3; %inestable
yiso1_1 = Biso1 ./ xiso;
yiso2_1 = (xiso * (Biso1 + 1) - Aiso)./xiso.^2;
yiso1_2 = Biso2 ./ xiso;
yiso2_2 = (xiso * (Biso2 + 1) - Aiso)./xiso.^2;
yiso1_3 = Biso3 ./ xiso;
yiso2_3 = (xiso * (Biso3 + 1) - Aiso)./xiso.^2;
yiso1_4 = Biso4 ./ xiso;
yiso2_4 = (xiso * (Biso4 + 1) - Aiso)./xiso.^2;
yiso1_5 = Biso5 ./ xiso;
yiso2_5 = (xiso * (Biso5 + 1) - Aiso)./xiso.^2;

%BIFURCACIÓN
Aiso2=0.5; %valor en el que fijamos A para ver cómo cambia el autovalor frente a B
Lambda_plus= 0.5.*((Bcont-1-Aiso2^2)+sqrt((Aiso2^2-Bcont+1).^2 - 4*Aiso2.^2)); %definición del autovalor +, incluyendo valores imaginario
Lambda_minus= 0.5.*((Bcont-1-Aiso2^2)-sqrt((Aiso2^2-Bcont+1).^2 - 4*Aiso2.^2)); %definición del autovalor -, incluyendo valores imaginario
Im_Lambda_plus = imag(Lambda_plus); %valores imaginarios de Lambda 1
Im_Lambda_minus = imag(Lambda_minus); %valores imaginarios de Lambda 2

%% PLOTTING
%% CORTE DEL ESTADO ESTACIONARIO
figure
plot(x,y1,x,y2,xss,yss,'o')
title('BRUSSELATOR: Determinación del Estado Estacionario - Solución gráfica')
xlabel('x')
ylabel('y')
legend('y1 (A=2, B=1)','y2 (A=2, B=1)')
xmin1=0;
xmax1=4;
ymin1=xmin1;
ymax1=xmax1;
axis([xmin1 xmax1 ymin1 ymax1])
% 
%% ESTABILIDAD
figure
plot(A,Breal1,A,Breal2,A,Bestab)
title('BRUSSELATOR: Determinación de la estabilidad')
xlabel('A')
ylabel('B')
legend('B = (A-1)^2','B = (A + 1)^2','B = A^2 + 1')
xmin2=-1;
xmax2=1;
ymin2=0;
ymax2=2.5;
axis([xmin2 xmax2 ymin2 ymax2])

%% ISOCLINAS
figure

subplot(3,2,1), plot(xiso,yiso1_1,xiso,yiso2_1,Aiso,Biso1/Aiso,'o')
title('ISOCLINAS: ESTABLE')
xlabel('x')
ylabel('y')
xmin3=0;
xmax3=3;
ymin3=0;
ymax3=2;
axis([xmin3 xmax3 ymin3 ymax3])

subplot(3,2,2), plot(xiso,yiso1_2,xiso,yiso2_2,Aiso,Biso2/Aiso,'o')
title('ISOCLINAS: ESTABLE OSCILATORIO')
xlabel('x')
ylabel('y')
xmin4=0;
xmax4=3;
ymin4=0;
ymax4=3;
axis([xmin4 xmax4 ymin4 ymax4])

subplot(3,2,3), plot(xiso,yiso1_3,xiso,yiso2_3,Aiso,Biso3/Aiso,'o')
title('ISOCLINAS: ESTABLE SEGÚN LYAPOUNOV')
xlabel('x')
ylabel('y')
xmin5=0;
xmax5=3;
ymin5=0;
ymax5=3;
axis([xmin5 xmax5 ymin5 ymax5])

subplot(3,2,4), plot(xiso,yiso1_4,xiso,yiso2_4,Aiso,Biso4/Aiso,'o')
title('ISOCLINAS: INESTABLE OSCILATORIO')
xlabel('x')
ylabel('y')
xmin6=0;
xmax6=3;
ymin6=0;
ymax6=10;
axis([xmin6 xmax6 ymin6 ymax6])

subplot(3,2,5), plot(xiso,yiso1_5,xiso,yiso2_5,Aiso,Biso5/Aiso,'o')
title('ISOCLINAS: INESTABLE')
xlabel('x')
ylabel('y')
xmin7=0;
xmax7=3;
ymin7=0;
ymax7=10;
axis([xmin7 xmax7 ymin7 ymax7])

%bruselator bifurcación
figure
plot(Bcont,Lambda_plus,Bcont,Lambda_minus,Bcont,Im_Lambda_plus,Bcont,Im_Lambda_minus)
title('BRUSSELATOR: Diagrama de bifurcación')
xlabel('B')
ylabel('\lambda')
legend('\lambda real 1','\lambda real 2','\lambda parte compleja 1','\lambda parte compleja 2')
% xmin2=-1;
% xmax2=1;
% ymin2=0;
% ymax2=2.5;
% axis([xmin2 xmax2 ymin2 ymax2])