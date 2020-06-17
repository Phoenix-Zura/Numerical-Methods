df = @(x,y) -x*y^2; % Given differential function
yf = @(x) 2/(1+x^2);
x0 = 0; % Initial x value
y0 = 2; % Initial y value
h = 0.2; % step size
xn = 2 ;  %final intervel of x
x = (x0):h:(xn);  % the range of x
y = zeros(size(x));  % allocate the result y
y(1) = y0;  % the initial y value
n = numel(y);  % the number of y values
a = zeros(size(x)); %% store the approximation results 
% The loop to solve the DE
for i=1:n-1
    k1 = h * df(x(i),y(i));
    k2 = h * df(x(i) + h , y(i) + k1);
    k = (k1 + k2)/2;
    y(i+1) = y(i)+ k; 
    a(i+1) = y(i+1) - yf(x(i));
end
fprintf('The solution of the differential equation is \t%d\n',y(end));
fprintf('The comparision of the approximation is:\n\t actual value  |\t approximatevalue\n');
for i=2:n
    fprintf('\t%d  |\t%d\n',a(i),y(i));
end