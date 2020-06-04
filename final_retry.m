% Final Exam PDE
% Wave Equation Implicit and Explicit form

L = 10;
J = 20;
N = J-1; %number of unknowns
dx = L/J;
c = 4;

x = dx*(1:N)';
X = [0;x;L];

dt = 0.1;

U = zeros(J-1); % Explicit
V = zeros(J-1); % Implicit

%U(1,:) = 0;
%U(end,:) = 0;

%V(1,:) = 0;
%V(end,:) = 0;

sig = c*(dt/dx)^2; % this is sigma squared

B = (2 * eye(N) + (-1 * diag(ones(N-1,1),1))) + (-1 * diag(ones(N-1,1), -1));

b = zeros(J-1,1);
b(1) = -1;
b(end) = -1;

U(:,1) = f(x);
U(:,2) = f(x) + g(x)*dt;
%U(:,2) = f(X') * (delt*g(X));
V(:,2) = f(X') * (dt*g(X));

I = (4/(sig)) * eye(J-1); % We define I for use in imp scheme

for i = 2:100
   
   % Explicit 
   
   %U(:,i+1) = (2*eye(J-1) - (sig)*B) * U(:,i) - U(:,i-1) - (sig)*b;
   U(:,i+1) = 2*U(:,i) - U(:,i-1) - sig*B*U(:,i);
   u = [0;U(:,i);0]; % Concat initial data
   
   % Implicit
   
   %V(:,i+1) = inv((I + B))*((2*(I - B))*U(:,i) - (I + B)*U(:,i-1) - 4*b);
   %v = [0;V(:,i);0]; % Concat initial data
   
   plot(X,u);%,X,v)
   axis([0,L,-5,5])
   %legend('Explicit','Implicit')
   pause()
   
    
end


function y = f(x)

    y = cos(pi*x)/3;

end

function y = g(x)

    y = 0*(x>5).*(x<10);

end
