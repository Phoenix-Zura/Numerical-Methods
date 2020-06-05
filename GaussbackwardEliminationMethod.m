function x = tril(A)
[m,n] = size(A);
if m~=n-1
    error('Matrix A must be a Square Matrix');
end
Aug = A;
%%Backw elemination
for col=n-1:-1:1
    for row=col-1:-1 : 1
        factor = Aug(row,col)/Aug(col,col);
        Aug(row,:) = Aug(row,:)-factor*Aug(col,:);
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