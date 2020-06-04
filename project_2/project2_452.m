% Project 2 Section 4.5 Number 2

J = 100;
kl = 3;

delx = 10/J;
x = 0:delx:10;
    
% Build matrices S and T 
S = 2 * eye(J-1) + (-1 * diag(ones(J-2,1),1)) + (-1 * diag(ones(J-2,1), -1));
T = delx^-2 .* S;

k = ones(1,length(x));

for i=1:length(x)
    % build k (I relaize there are more efficient ways to do this)
    if x(i) > 5
       k(i) = kl;
   end
       
end

k = k';
U = v(x,k)';

for j = J-1
    % calculate q for eahc value of k
    q = k(j) * T * U(1:J-1)'; % calculate approximation
    
end
% Add Zeros b/c U is 0 at ends
q = [q; 0];
q = [0; q];

Q = sin(pi*x /10); % calculate exact solution

hold on
% plot approximation
plot(x,q)
plot(x,Q) % plot exact line
hold off


function w = v(x,k)

    w = 1./k .* (10/pi)^2 * sin((pi*x)/10);

end
