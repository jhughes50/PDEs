% Project 2 Section 4.2 Number 4

x = 0: pi/100: pi;

u0 = u(x,0);
u1 = u(x,0.5);
u2 = u(x,1);
u3 = u(x,2);
u4 = u(x,5);

hold on
plot(x,u0,x,u1,x,u2,x,u3,x,u4)
legend('t=0','t=0.5','t=1','t=2','t=5')
hold off