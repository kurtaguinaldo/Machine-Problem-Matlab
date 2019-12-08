n = 0:199;
x = input('Enter a function x(n) : ');
% This script file requires a function x(n) as the user-input and takes 
%that input into the function y(n). The program would display the graphs of
%the two functions.

a = 1:200;
w = x(a);
k = 1;

h = [];
y = [];

%The loop is from 0 to 199 and would output the values of the function y(n)
%based on the given conditions.
for r = 0:199
  
    if r == 1
    g  = -1.5*(w(k)) + 2*(w(k+1)) - 0.5*(w(k+2));
    y = [y g];
   
    elseif r > 0 && r <= 198
    k = k+1;
    h = 0.5*(w(k+1)) - 0.5*(w(k-1));
    y = [y h];
    
    elseif r == 199
    k = k+1;
    i = 1.5*(w(k)) - 2*(w(k-1)) + 0.5*(w(k-2));
    y = [y i];
    
    else
    end
   
end

plot(x,'r')
legend 'x'
hold on
plot(y)
legend ('x(n)','y(n)')
xlabel 'x-axis'
ylabel 'y-axis'

