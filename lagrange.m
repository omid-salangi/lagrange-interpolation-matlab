clc;
clear all;
syms x;
l = sym(1);
n = input('number of data : ');
for v = 1 : 1 : n
    prompt = strcat('enter x',string(v), ' : ');
    a(v) = input(prompt);
    prompt = strcat('enter y',string(v), ' : ');
    y(v) = input(prompt);
end
for v = 1 : 1 : n
    denom(v) = 1;
    numera(v) = sym(1);
    for w = 1 : 1 : n
        if v == w
            continue;
        else
            denom(v) = denom(v) * (( a(v) - a(w)));
            numera(v) = numera(v) * (x - a(w));
        end
    end
    fprintf('L%d = ' , v );
    l(v) = numera(v) / denom(v);
    disp(l(v));
end
final  = sym(0);
for v = 1 : 1 : n
    final = final +l(v) *  y(v);
end
disp('lagrange interpolation : ');
disp(final);
final = expand(final);
disp('expanded polynomial : ');
disp(final);
d = input('enter inner number : ');
fprintf('answer : %f \n',subs(final,x,d));

