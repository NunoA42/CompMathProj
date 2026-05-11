%Para resolver a alínea a) vai-se usar este script para determinar o sinal
%da terceira derivada da função f(x)=e^(x^2)-cos(x^2)+1. Para isso vai-se
%fazer o plot da terceira derivada, estando no eixo x 20 pontos igualmente
%espaçados entre 0 e 1 e no eixo y a terceira derivada de cada um desses
%pontos

x = linspace(0,1,20);
y = ones(1,length(x));
for i = 1:1:20
    y(i)=12*x(i)*exp(x(i)^2)+8*(x(i)^3)*exp(x(i)^2)+12*x(i)*cos(x(i)^2)+8*(x(i)^3)*sin(x(i)^2);
end

plot(x,y)