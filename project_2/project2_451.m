% Project 2 Section 4.5 Number 1

% we use an array of J's to evalute each J and compare the mon one graph
% for the second part of the question
J = [5,10,20,40,80];

hold on
for i=1:length(J)
    
    delx = 10/J(i);
    x = 0:delx:10;

    k = 1;
    
    % Build matrices S and T 
    S = 2 * eye(J(i)-1) + (-1 * diag(ones(J(i)-2,1),1)) + (-1 * diag(ones(J(i)-2,1), -1));
    T = delx^-2 .* S;

    U = v(x,k)';
   
    q = k * T * U(1:J(i)-1); % calculate approximation
    % Add Zeros b/c U is 0 at ends
    q = [q; 0];
    q = [0; q];
    
    M = T; % compute M for final part of Question, M is approximately T,
           % as J gets larger eig (T) will go to eig(M) as the
           % approximation gets better.
    
    %compare eigenvales of T and M for final part of question
    fprintf('eig(T): \n')
    eig(T)
    fprintf('eig(M): \n')
    eig(M)
    % plot approximation
    plot(x,q)
    
end

Q = sin(pi*x /10); % calculate exact solution
plot(x,Q) % plot exact line
legend('J = 5', 'J = 10', 'J = 20', 'J = 40','J = 80', 'exact')
hold off

% From the graph we can see that a higher J gives us a better approximation
% for q but with a larger J there is a large variance in the beginning.


function w = v(x,k)

    w = 1/k * (10/pi)^2 * sin((pi*x)/10);
    %from first part of question
    % w = .5 * x .* (10 - x);

end

