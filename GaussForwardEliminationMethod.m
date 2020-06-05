function x = GaussForwardEliminationMethod(A,b)
[m,n] = size(A);
if m~=n
    error('Matrix A must be a Square Matrix');
end
nb = n+1;
Aug = [A b];
s = length(A);
%%forward elemination
for k=1 : n-1
    for i=k+1 : n
        factor = Aug(i,k)/Aug(k,k);
        Aug(i,k:nb) = Aug(i,k:nb)-factor*Aug(k,k:nb);
    end
end
Aug;
% Back substitution
x = zeros(s,1);
x(s) = b(s)/A(s,s);               
for i = s-1:-1:1                    
    sum = 0;
    for j = s:-1:i+1                
        sum = sum + A(i,j)*x(j);    
    end 
    x(i) = (b(i)- sum)/A(i,i);
end 
x;