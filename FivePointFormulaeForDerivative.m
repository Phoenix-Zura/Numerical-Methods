PI = 22/7;  %constant value PI
fx = @(x) cos((3*x-1)*PI/180);  %% fiven function
x = 1;   %% value where derivative is found
h = 0.1;  % stepsize h

df = (fx(x-2*h)-8*fx(x-h)+8*fx(x+h)-fx(x+2*h))/(12*h);  %% five point formulae

fprintf('The derivative of given function at %d is %0.8f \n',x,df);
