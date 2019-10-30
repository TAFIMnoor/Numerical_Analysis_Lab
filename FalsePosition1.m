a=2;
b=3;
f=@(x) x^3-2*x^2-4;
eps=1e-6;
    iter = 0;
    if f(a) * f(b) >= 0
        fprintf('Single root does not exist between %f and %f.\n', a, b);
        exit(1);
    end
    sol = a;
    while abs(b - a) >= eps
        sol = (a * f(b) - b * f(a)) / (f(b) - f(a));
        iter = iter + 1;
        if f(sol) == 0
            break;
        elseif (f(sol) * f(a)) < 0
            b = sol;
        else
            a = sol;
        end
    endwhile
sol