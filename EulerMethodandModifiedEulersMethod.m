%% function definition
f = @(x,y) 2*x*y;
g = @(x,y) (x-y)/(x+2*y);

yn1 = Eulers(f,0,1,0.1,2)
yn2 = Eulers(f,0,1,0.05,2)

yn3 = Improved_Eulers(f,0,1,0.1,2)
yn4 = Improved_Eulers(f,0,1,0.05,2)

yn5 = Eulers(g,0,1,0.1,2)
yn6 = Eulers(g,0,1,0.05,2)

yn7 = Improved_Eulers(g,0,1,0.1,2)
yn8 = Improved_Eulers(g,0,1,0.05,2)


% Euler's Method
function yn = Eulers(f,x0,y0,h,xn) % h step size
x = (x0):h:(xn);  % the range of x
y = zeros(size(x));  % allocate the result y
y(1) = (y0);  % the initial y value
n = numel(y);  % the number of y values
% The loop to solve the DE
for i=1:n-1
    y(i+1) = y(i) + h * f(x(i),y(i));
end
yn = y(n);
end

% Improved Eulers method
function yn  = Improved_Eulers(f,x0,y0,h,xn)
x = (x0):h:(xn);  % the range of x
y = zeros(size(x));  % allocate the result y
y(1) = (y0);  % the initial y value
n = numel(y);  % the number of y values
% The loop to solve the DE
for i=1:n-1
    k1 = h * f(x(i),y(i));
    k2 = h * f(x(i) + h , y(i) + k1);
    k = (k1 + k2)/2;
    y(i+1) =y(i)+ k; 
end
yn = y(n);
end
