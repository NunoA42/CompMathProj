import trap.*
import simp.*
import funcaod.*
%Resolução da alínea d)
%Valor de A dado no enunciado
A = 1.558127508006909;

%Para calcular os valores da aproximação de A para os métodos do Trapézio e
%de Simpson, usa-se o mesmo algoritmo da alínea c). Os erros de cada
%aproximação serão registados nos respetivos vetores. O vetor dos erros do
%método dos Trapézios será ehtrap e o vetor dos erros do método de Simpson
%será ehsimp

%Método dos trapézios
Atrap = ones(1,27);
i = 1;
for itrap = 4:1:30
    Atrap(i) = trap(itrap);
    i = i+1;
end
%Erros do Método dos Trapézios
ehtrap = ones(1,27);
for i = 1:1:27
    ehtrap(i)=abs(A-Atrap(i));
end

%Método de Simpson
Asimp = ones(1,14);
i = 1;
for isimp = 4:2:30
    Asimp(i) = simp(isimp);
    i = i+1;
end

%Erros do Método de Simpson
ehsimp = ones(1,14);
for i = 1:1:14
    ehsimp(i)=abs(A-Asimp(i));
end

%Logarítmos de h e dos erros
%Método dos Trapézios
loghtrap=ones(1,27);
i = 1;
for N = 4:1:30
    loghtrap(i) = log(1/N);
    i = i+1;
end

logehtrap = ones(1,27);
for i = 1:1:27
    logehtrap(i) = log(ehtrap(i));
end
%Gráfico pedido para o Método dos Trapézios
subplot(2,1,1)
plot(loghtrap,logehtrap)
title("Método dos trapézios")
%Determinação do ptrap, que corresponde à ordem de convergência do método
%dos trapézios, usando a função desenvolvida na alínea d)
[atrap,ptrap] = Proj_MC_alinea_d(loghtrap,logehtrap);

%Método de Simpson
loghsimp = ones(1,14);
i = 1;
for N=4:2:30
    loghsimp(i) = log(1/N);
    i = i+1;
end

logehsimp = ones (1,14);
for i = 1:1:14
    logehsimp(i) = log(ehsimp(i));
end
%Gráfico pedido para o Método de Simpson
subplot(2,1,2)
plot(loghsimp,logehsimp)
title("Método de Simpson")
%Determinação do psimp, que corresponde à ordem de convergência do método
%de Simpson, usando a função desenvolvida na alínea d)
[asimp,psimp] = Proj_MC_alinea_d(loghsimp,logehsimp);

