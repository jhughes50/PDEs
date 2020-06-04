% Project 2 Section 3.5 - 2


Ul = 2;
Ur = 1;

s = linspace(-2,2,50);

myeps = [0.02, 0.05, 0.1, 0.2];

hold on;
for i = 1:length(myeps)
    t = phi(s, myeps(i), Ul, Ur);
    plot(s,t)
    axis([-3, 3, 0, 3])
end
hold off;

function U = phi(s, myeps, Ul, Ur)

	denom = 1 + exp( -.5 .* s .* (Ul - Ur) ./ myeps);
	U = Ul + (Ur - Ul) ./ denom ;

end

