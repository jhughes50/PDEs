% Project 2 Number 5

x = linspace(-2,2,100);
L = 2;
T_max = 5;

t = linspace(0,T_max,100);

[X, T] = meshgrid(x,t);

TR = 100;
n = 1:TR;

L_n = Ln(n,L);
w_n = Wn(n,L);
B_n = Bn(n,L);

S = sin(sqrt(L_n)' * x);

for step = 1:100
    
    U = (B_n .* sin(w_n * t(step))) * S ; 
    
    plot(x, U)
    axis([-2,2,-25,25])
    pause(0.01)
    
end

function y = g(x)

    y = zeros(1,length(x));
    for i=1:length(x)
        if abs(x(i)) < 1
            y(i) = 1;
        else
            y(i) = 0;
        end
    end
    
end

function z = Ln(n,L)

    z = (n * pi ./ L).^2;

end

function w = Wn(n,L)

    w = sqrt(Ln(n,L)) ./ (n * pi / L);

end

function b = Bn(n,L)

    b = 1./Wn(n,L) .* cos(n*pi/L) * L/2;
    

end


