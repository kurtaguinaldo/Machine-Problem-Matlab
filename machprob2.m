function [] = machprob2(x1,y1,x2,y2,x3,y3)
%Please input the x and y values of the three points that lie on a circle.
%This function returns the center,radius and vector[D,E,F] of the circle.

u = x1^2 + y1^2;
t = x2^2 + y2^2;
w = x3^2 + y3^2;

b = [x1,y1,1; x2,y2,1 ;x3,y3,1];

d = -[u,y1,1; t,y2,1 ;w,y3,1];

e = [u,x1,1; t,x2,1 ;w,x3,1];

f = -[u,x1,y1; t,x2,y2 ;w,x3,y3];

det1 = (det(b));
det2 = (det(d));
det3 = (det(e));
det4 = (det(f));

D = det2 / det1;
E = det3 / det1;
F = det4 / det1;

h = -(det2 / (2*det(b)));
k = -(det3 / (2*det(b)));
r = sqrt((h - x1)^2 + (k - y1)^2);

c = [h k];
v = [D E F];

format short g

disp('center of the circle:')
disp(c)
disp('radius of the circle:')
disp(r)
disp('vector:')
disp(v)

end