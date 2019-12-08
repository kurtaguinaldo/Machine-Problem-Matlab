%This script file displays the graph for f(n).
a = 0;%This variable serves as the position of g.

%The loop runs from 0 to 99 with conditions n<=9 and n>=10.
for n = 0:99
    a = a+1;
    if n <=9
        g(a) = n^2-7;
    elseif n>=10
        k = n;
        while k>=10  %The while loop repeats the condition as long as k 
            k = k-10; % remains greater than or equal to 10 following the
            g(a)= k^2-7; %piecewise condition.
        end
    end
end

%The graph starts from 0 up to 9.Upon reaching 10, the said graph repeats 
%itself until it reaches 99. 
d = 0:99;
stem(d,g,'r','markerfacecolor','k')
xlabel('n')
ylabel('f(n)')
title 'Graph of f(n)'
