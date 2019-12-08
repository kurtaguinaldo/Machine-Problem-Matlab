function [] = machprob3(p)
%Please enter an nx2 matrix.
%This function takes an nx2 matrix as input and gives the coefficients of
%the polynomial that best approximates the data values, as output.

x = p(:,1);
y = p(:,2);


%These conditions determine the polynomials that can be drawn from the data
%and their respective values according to the least-norm error vector.

    d = polyfit(x,y,1);
    q = polyval(d,x);
    e = y - q;
  
    d2 = polyfit(x,y,2);
    q2 = polyval(d2,x);
    e2 = y - q2;
   
    d3 = polyfit(x,y,3);
    q3 = polyval(d3,x);
    e3 = y - q3;

    d4 = polyfit(x,y,4);
    q4 = polyval(d4,x);
    e4 = y - q4;
    
    d5 = polyfit(x,y,5);
    q5 = polyval(d5,x);
    e5 = y - q5;
  
    d6 = polyfit(x,y,6);
    q6 = polyval(d6,x);
    e6 = y - q6;
   
    d7 = polyfit(x,y,7);
    q7 = polyval(d7,x);
    e7 = y - q7;
 
    d8 = polyfit(x,y,8);
    q8 = polyval(d8,x);
    e8 = y - q8;
  
    d9 = polyfit(x,y,9);
    q9 = polyval(d9,x);
    e9 = y - q9;
    
    d10 = polyfit(x,y,10);
    q10 = polyval(d10,x);
    e10 = y - q10;

   %These variables return the norm values of the corresponding
   %least-norm error vectors.
   a = norm(e);
   a2 = norm(e2);
   a3 = norm(e3);
   a4 = norm(e4);
   a5 = norm(e5);
   a6 = norm(e6);
   a7 = norm(e7);
   a8 = norm(e8);
   a9 = norm(e9);
   a10 = norm(e10);
   
   z = [a a2 a3 a4 a5 a6 a7 a8 a9 a10];
   
   k = min(z);%The least value
   
   format short g
   
   %One of these statements would output the coefficients of the polynomial
   %with the least value.
   if k == a
       fprintf('The coefficients of the best polynomial: \n')
       disp(d)
   elseif k == a2
       fprintf('The coefficients of the best polynomial: \n')
       disp(d2)
   elseif k == a3
       fprintf('The coefficients of the best polynomial: \n')
       disp(d3)
   elseif k == a4
       fprintf('The coefficients of the best polynomial: \n')
       disp(d4)
   elseif k == a5
       fprintf('The coefficients of the best polynomial: \n')
       disp(d5)
   elseif k == a6
       fprintf('The coefficients of the best polynomial: \n')
       disp(d6)
   elseif k == a7
       fprintf('The coefficients of the best polynomial: \n')
       disp(d7)
   elseif k == a8
       fprintf('The coefficients of the best polynomial: \n')
       disp(d8)
   elseif k == a9
       fprintf('The coefficients of the best polynomial: \n')
       disp(d9)
   elseif k == a10
       fprintf('The coefficients of the best polynomial: \n')
       disp(d10)
   else
   end
   
end
    
   
 