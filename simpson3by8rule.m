a = 0;     %%integration limits
b = 1;
n = input("Enter the Number of intervals:");   %% taking number of intervals N as input
h = (b-a)/n ;             %% calculating the stepsize h for given number of intervals
f = @(x) exp(x)*sin(6*x); %% Given function

%%calculating Y values for each step
y = zeros(n,1);
for i = 1 : n
    y(i) = f(a+i*h);
end

%%Applying the simpson's 3/8 rule
sum1 = sum(y)-y(1)-y(n); %% calculating sum of all y terms
Y3m = 0;                  %calculating sum of Y terms which are multiples of 3
for i = 1 : n-1
    if(mod(i,3)==0)
        Y3m = Y3m + y(i); 
    end
end
sum1 = sum1-Y3m; %%sum of rest of y terms

I = 3/8*h*((y(1)+y(n))+2*Y3m+3*sum1);
fprintf("The approximate value for the given integration is: %0.6f\n",I)
tv = -0.281611;   %% the true value of integration
Re = abs(tv-I)/abs(tv)*100 ;   %% calculating the relative error
fprintf("The relative error for the approximatio is: %0.2f\n",Re);