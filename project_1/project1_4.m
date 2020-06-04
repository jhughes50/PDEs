% Project 1 Question 2.8.4
% We solve the ODE to find the characteristic curves

x0 = 0:.1:8;

tf = 2;

[t,x] = ode45(@w,[0,tf],x0);

N = length(t);

xf = x(N,:);

%plot(x0, f(x0), xf, f(x0))
plot3(x,xf,f(xf),'k')

function z = f(x)
z = log(x);
end

function dxdt = w(X,T)

dxdt = T - X.^2/10;

end
