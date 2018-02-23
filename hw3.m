%Zachary Linkletter   ECE498   hw3
clc
clear

figure(1)
u = linspace(-1.5, 1.5, 50);
v = u;
[u, v] = meshgrid(u, v);

x1 = u.*(1-(u.^2)/3 + v.^2);
y1 = -v.*(1-(v.^2)/3 + u.^2);
z1 = (u.^2 - v.^2);

surfc(x1,y1,z1)
xlim([-4 4])
ylim([-4 4])
zlim([-4 4])
camlight left
colormap(jet)
axis tight
xlabel('X')
xticks([-3 -2 -1 0 1 2 3])
ylabel('Y')
yticks([-3 -2 -1 0 1 2 3])
zlabel('Z')
zticks([-2.5 -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 2.5])

figure(2)
a = 1; b = 1; c = 1;
v = linspace(-2, 2, 40);
u = linspace(0, 2*pi, 40);
[u, v] = meshgrid(u, v);
x2 = a .* cosh(v) .* cos(u);
y2 = b .* cosh(v) .* sin(u);
z2 = c * sinh(v);
mesh(x2, y2, z2)
colormap('cool')
colorbar('AxisLocation','in')
axis tight
xlabel('X')
xticks([-3 -2 -1 0 1 2 3])
ylabel('Y')
yticks([-3 -2 -1 0 1 2 3])
zlabel('Z')
set(gca,'BoxStyle','full','Box','on')

figure(3)
a = 10;
X = linspace(-5.12,5.12,100);
Y = linspace(-5.12,5.12,100);
[X, Y] = meshgrid(X, Y);
Z = 2 * a + (X.^2 - a * cos(2 * pi .* X)) + (Y.^2 - a * cos(2 * pi .* Y));
surfc(X,Y,Z,'FaceColor','interp','EdgeColor','none','FaceLighting','gouraud')
grid off
colormap('jet')
camlight('headlight')
xlabel('X')
ylabel('Y')
zlabel('Z')
zticks([0 10 20 30 40 50 60 70 80])