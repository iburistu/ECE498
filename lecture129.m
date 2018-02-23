x = 1:50
y = x.^2

figure(1)
plot(x,y, '-r')
grid on
xlim([0,50])
ylim([-5,5])
xlabel('X')
ylabel('Y')