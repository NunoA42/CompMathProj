%Esta função servirá para calcular a área pedida na alínea b) pelo método
%de Simpson. Deduziu-se que a área corresponderia ao integral de:
%f(x) = e^(x^2)-cos(x^2)+1, com x entre 0 e 1. A função recebe como dado de
%entrada o N número de sub-intervalos e fornece a área pedida

function A = simp(N)
   %Limites do integral
   a = 0;
   b = 1;
   %Cálculo do h da fórmula
   h=(b-a)/N;
   %Cálculo do f(x0) e f(xN) da fórmula
   f0= exp(a^2) - cos(a^2)+1;
   fN= exp(b^2) - cos(b^2)+1;
   %Para calcular os somatórios da fórmula, usam-se dois loops que vão
   %fazer i iteradas, até o valor de i ser maior que N/2, para o primeiro
   %somatório, e até o valor de i ser maior que (N/2)-1, para o segundo
   %somatório
   i = 1;
   som1 = 0;
   %Primeiro somatório
   while i <= N/2
        %Este somatório corresponde à soma dos valores de f(xn), onde
        %n = 2*i-1. Para cada iterada, xn = a + n*h
        n = 2*i - 1;
        xn = a+h*n;
        %Cálculo de f(xn)
        f = exp(xn^2) - cos(xn^2)+1;
        %Soma dos f(xn)
        som1 = som1+f;
        i = i+1;
   end
   i = 1;
   som2 = 0;
   %Segundo somatório
   while i <= (N/2)-1
        %O raciocínio deste somatório é o mesmo do anterior, mas, desta
        %vez, em cada iterada: n = 2*i
        n = 2*i;
        xn = a+n*h;
        f = exp(xn^2) - cos(xn^2)+1;
        som2 = som2+f;
        i = i+1;
   end
   %Aplicação da fórmula do método de Simpson
   A = (h/3)*(f0+fN+4*som1+2*som2);
end