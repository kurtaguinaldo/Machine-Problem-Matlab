hp = input('Give the initial height of the projectile: ');
vp = input('Give the velocity of the projectile: ');
a = input('Give the angle in degrees: ');
ax = input('Give the x-comp. of acceleration: ');
ay = input('Give the y-comp. of acceleration: ');
%This program takes the initial height,velocity,angle in degrees,
%x and y-comp of acc. as inputs and displays the trajectory of the 
%projectile based on the values.


%This statement provides an error message whenever the y-comp. of
%acceleration is equal to 0.
if ay == 0
error('Vertical acceleration must not be equal to zero.')
end

x = [];
y = [];
x2 = [];
y2 = hp;
t = 0;

vx = vp * cosd(a);
vy = vp * sind(a);

while y2 > 0 
    t = t + 0.001;
    x2 = vx * t + (1/2) * ax * t^2;
    x = [x x2];
    y2 = vy * t + (1/2) * ay * t^2 + hp;
    y = [y y2];

end
        
plot(x,y,'--r','linewidth',2) %Plots the x and y values in a graph.
grid on
xlim([0 max(x)]) %Limit of the x-axis
ylim([0 max(y)]) %Limit of the y-axis
xlabel 'x'
ylabel 'y'
title 'Projectile Motion'
legend 'trajectory'
