% Project 1 Question 2.8.2
% C is a function of x

x = linspace(0,10,100);
t = linspace(0,10,100);

c = k(x); %c is in file k.m

u = f(x);

J = length(x);

nsteps = 100;
j = [2:J];

for n =1 :nsteps

    v = u;
    u(j) = v(j) - c(j).*(v(j)-v(j-1));
    plot(x,u,'*')
    axis([0,10,0,2]);
    pause(0.1)
end

