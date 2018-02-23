close all

%% Demo 1
figure(1)
[X, Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
figure(1)
mesh(X, Y, Z)
xlabel('X')
ylabel('Y')
zlabel('Z')

%% Demo 2
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
figure(2)
colormap hsv
surf(X,Y,Z,'FaceColor','interp',...
    'EdgeColor','none',...
    'FaceLighting','gouraud')
daspect([5 5 1])
xlabel('X')
ylabel('Y')
zlabel('Z')
axis tight
view(-50,30)
camlight left

%% Demo 3
% Generate unevenly sampled data
x = rand(100,1)*16 - 8;
y = rand(100,1)*16 - 8;
r = sqrt(x.^2 + y.^2) + eps;
z = sin(r)./r;
 
% Create uniformly spaced data
xlin = linspace(min(x),max(x),33);
ylin = linspace(min(y),max(y),33);
 
% Generate a uniformly spaced grid
[X,Y] = meshgrid(xlin,ylin);
 
% Interpolate the values at the uniformly spaced points
f = scatteredInterpolant(x,y,z);
Z = f(X,Y);
 
% Plot the interpolated and the nonuniform data
figure(3)
mesh(X,Y,Z) %interpolated
axis tight; hold on
plot3(x,y,z,'.','MarkerSize',15) %nonuniform
xlabel('X')
ylabel('Y')
zlabel('Z')

%% Demo 4
t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
 
figure(4)
plot3(st, ct, t, 'r', 'LineWidth', 2)
grid on
xlabel('X')
ylabel('Y')
zlabel('Z')

%% Demo 5
x = linspace(-10,10,1000);
y = x;
[X, Y] = meshgrid(x, y);
Z = X.^2 + Y.^2;
figure(5)
surfc(X, Y, Z, 'EdgeColor', 'none');
colormap('jet')
xlabel('x');
ylabel('y');
zlabel('z');

%% Demo 6
t = linspace(0, 4*pi, 100);
x = t;
y = cos(t);
z = sin(t).^2;
 
figure(6)
subplot(2, 1, 1)
stem3(z, 'filled')                   
xlabel('x');
ylabel('y');
zlabel('z');

subplot(2, 1, 2);
stem3(x, y, z, 'rp')                   
xlabel('x');
ylabel('y');
zlabel('z');

view(-25, 60)

%% Demo 7
% X	Y	Z
triplet_data = [
1	1	152
2	1	89
3	1	100
4	1	100
5	1	100
1	2	103
2	2	0
3	2	100
4	2	100
5	2	100
1	3	89
2	3	13
3	3	100
4	3	100
5	3	100
1	4	115
2	4	100
3	4	187
4	4	200
5	4	111
1	5	100
2	5	85
3	5	111
4	5	97
5	5	48];

% Get column of X, Y, and Z from triplets
X = triplet_data(:, 1);
Y = triplet_data(:, 2);
Z = triplet_data(:, 3);
 
% Reshaping results in three 5?by-5 arrays
x = reshape(X, 5, 5)';
y = reshape(Y, 5, 5)';
z = reshape(Z, 5, 5)';
 
% create a 3?D stem graph
figure(7)
stem3(x,y,z,'MarkerFaceColor','g')
xlabel('X')
ylabel('Y')
zlabel('Z')

%% Demo 8
x = linspace(-5,5,50);
y = linspace(-5,5,50);
[xx,yy] = meshgrid(x,y);
z1 = cos(xx).*cos(yy);
z2 = exp(-0.2*sqrt(xx.^2 + yy.^2));
zz = z1.*z2;
 
figure(8)
ribbon(yy, zz, 1)  
colormap('jet')
xlabel('X')
ylabel('Y')
zlabel('Z')

%% Demo 9
figure(9)
sphere(50)    
colormap('jet')
[x, y, z] = sphere(50);   

hold on
mesh(x, y, -z.^2 + 2)                     
 
surf(x, y, z.^2 - 2)      
axis equal
xlabel('X')
ylabel('Y')
zlabel('Z')

%% Demo 10
x = linspace(-5, 5, 50);
[xx, yy] = meshgrid(x, x);
 
figure(10)
colormap('jet')
 
subplot(2, 2, 1)
zz = -1./(xx.^2 + yy.^2 + 1)-1./...
      ((xx-2).^2 + (yy-2).^2 + 2);
surfc(xx, yy, zz)                                  
shading faceted                                  
 
subplot(2, 2, 2)
zz = 1./(cos(xx).^4 + sin(yy).^4 + 1);
surfc(xx, yy, zz)                                  
shading interp                                    
 
subplot(2, 2, 3)
zz = real(atan(xx + sqrt(-1)*yy));
surfc(xx, yy, zz);                                  
shading flat                                     
 
subplot(2, 2, 4)
zz = 1./(sin(xx) + 2 + abs(yy).*cos(yy).^2);           
h = surfc(xx, yy, zz);                                
set(h, 'edgecolor', 'b')

%% Demo 11

figure(11)
h = ezsurf('sin(sqrt(x^2+y^2))/sqrt(x^2+y^2)',[-6*pi,6*pi]);
view(0,75)
shading interp
lightangle(-45,30)
h.FaceLighting = 'gouraud';
h.AmbientStrength = 0.3;
h.DiffuseStrength = 0.8;
h.SpecularStrength = 0.9;
h.SpecularExponent = 25;
h.BackFaceLighting = 'unlit';

%% Demo 12
[x,y] = meshgrid([-2:.2:2]);
z = x .* exp(-x.^2 - y.^2);
 
figure(12)
surf(x, y, z, gradient(z));
axis tight
xlabel('X')
ylabel('Y')
zlabel('Z')

%% Demo 13
[x,y] = meshgrid([-2:.2:2]);
z = x .* exp(-x.^2 - y.^2);
 
figure(13)
surf(x, y, z, 'FaceAlpha', 'flat',...
    'AlphaDataMapping', 'scaled',...
    'AlphaData', gradient(z),...
    'FaceColor', 'blue')
axis tight
xlabel('X')
ylabel('Y')
zlabel('Z')

%% Demo 14
t = 0:pi/5:2*pi;
figure(14)
patch(sin(t), cos(t), 'y')
axis equal
grid on
xlabel('sin(t)', 'FontSize', 14)
ylabel('cos(t)', 'FontSize', 14)

%% Demo 15
vert = [0 0 0;
        1 0 0;
        1 1 0;
        0 1 0;
        0 0 1;
        1 0 1;
        1 1 1;
        0 1 1];
 
fac = [1 2 6 5;
       2 3 7 6;
       3 4 8 7;
       4 1 5 8;
       1 2 3 4;
       5 6 7 8];
 
figure(15)
patch('Vertices',vert,'Faces',fac,...
    'FaceVertexCData',hsv(8),'FaceColor','interp')
 
xlabel('X', 'FontSize', 14)
ylabel('Y', 'FontSize', 14)
zlabel('Z', 'FontSize', 14)
 
view(3)
axis vis3d

%% Demo 16
[x,y,z,v] = flow;
 
figure(16)
xslice = 5;
yslice = 0;
zslice = 0;
slice(x, y, z, v, xslice, yslice, zslice);
colormap(jet(64));
colorbar('vertical');
view(3);
axis on;
grid on;
light;
lighting phong;
camlight('left');
shading interp;
 
xlabel('X', 'FontSize', 14)
ylabel('Y', 'FontSize', 14)
zlabel('Z', 'FontSize', 14)

%% Demo 17
[x, y, z, v] = flow;
 
figure(17)
xslice = (1:3:9);
yslice = 0;
zslice = 0;
isovalues = (-3.0:0.25:3.0);
contourslice(x,y,z,v,xslice,yslice,zslice,isovalues);
view([-10 40]);
axis on;
grid on;
 
xlabel('X', 'FontSize', 14)
ylabel('Y', 'FontSize', 14)
zlabel('Z', 'FontSize', 14)
