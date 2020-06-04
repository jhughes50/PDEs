function b = k(x)

    kl = 3;
    b = piecewise(x<5, 1, 5<x ,kl);

end