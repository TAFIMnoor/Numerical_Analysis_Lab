a =2;
b =3;
f= @(x) x^3-2*x^2-4;
eps = 1e-6;
no_iterations=0;
    solution = a;
    while abs(b - a) >= eps
        solution = (a + b) / 2;
        no_iterations = no_iterations + 1;
        if f(solution) == 0
            break;
        elseif (f(a) * f(solution)) < 0
            b = solution;
        else
            a = solution;
        end;
endwhile
solution
