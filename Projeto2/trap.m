%Esta função servirá para calcular a área pedida na alínea b) pelo método
%dos trapézios. Deduziu-se que a área corresponderia ao integral de:
%f(x) = e^(x^2)-cos(x^2)+1, com x entre 0 e 1. A função recebe como dado de
%entrada o N número de sub-intervalos e fornece a área pedida A

function A = trap(N)
   %Limites do integral
   a = 0;
   b = 1;
   %Cálculo do h da fórmula
   h=(b-a)/N;
   %Cálculo do f(x0) e f(xN) da fórmula
   f0= exp(a^2) - cos(a^2)+1;
   fN= exp(b^2) - cos(b^2)+1;
   %Para calcular o somatório da fórmula, usamos um loop que irá fazer i
   %iteradas, até o valor de i ser maior que N-1. Cada xi corresponde ao xi
   %anterior mais h
   xi = h;
   i = 1;
   som = 0;
   while i <= N-1
        %Em cada iterada, é calculado o f(xi) e soma-se o f(xi) ao
        %somatório. No fim, faz-se xi = xi+h e i = i+1 para passar à
        %próxima iterada do loop
        f = exp(xi^2) - cos(xi^2) +1;
        som = som + f;
        xi = xi + h;
        i = i +1;
   end
   %Aplicação da fórmula do método dos Trapézios
   A = (h/2)*(f0+fN+2*som);
end