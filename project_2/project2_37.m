% Project2 Section 3.7 Number 1

delx = 0.25;
delt = delx^2 /2;

x = 0:delx:10;
t = 0:delt:10;

x = x';
k = 1;

s = (0.5*k*delt)/(delx^2);
n = length(x);

A = (1-2*s) * eye(n) + (s * diag(ones(n-1,1),1)) + (s * diag(ones(n-1,1), -1));
U = zeros(n,n);
U(:,1) = U(:,1) + f(x);
W = V(x,t);           % Exact

for i=2:length(t)
   
    U(:,i) = A * U(:,i-1);
   
    plot(x,U(:,i),x,W(:,i))
    axis([0,10,0,1])
    pause(0.01)
end

function Z = V(x,t)

    Z = sin(pi*x/10) * exp((-(pi/10)^2) * t);
    

end



