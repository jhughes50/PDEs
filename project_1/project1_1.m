% Project 1 Question 2.8.1
% C is a constant in Ut + cUx = 0

c =.25;

delx = .1;

x = 0:delx:10;

J = length(x);

delt = .1;

r = c * delt/delx;

nsteps = 100;

t = delt:delt:delt*nsteps;

u = f(x);
j = [2:J];

for n = 1:nsteps
    v = u;
    u(j) = v(j) - r.*(v(j)-v(j-1));
    plot(x,u,'+r')
    axis([0,10,0,2]);
    pause(0.1)
end 

