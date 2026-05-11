%Decidimos dar à função um nome derivado da equação ("freud de
%Freudenstein"). A função recebe como dados de entrada os lados a,b,c e d
%do quadrilátero, o ângulo beta entre os lados a e d, o valor x0 da iterada
%inicial, o número N máximo de iteradas, e a tolerância Tol para o erro.
%Como dados de saída, a função fornece um vetor com todas as iteradas
%realizadas para aproximar o ângulo fi, sendo a última iterada a
%aproximação final

function x = freud(a,b,c,d,beta,x0,N,tol)
    %Criação do vetor que irá conter todas as iteradas
    x = [x0]; 
    %Cálculo dos valores k1,k2 e k3 da equação, cujas fórmulas são
    %fornecidas no enunciado
    k1 = d/a; 
    k2 = d/c; 
    k3 = (a^2 - b^2 + c^2 + d^2)/(2*a*c);
    %Criação de i, para fazer referência à iterada atual
    i = 1;
    %Valor do erro e, inicialmente igual ao tol por conveniência
    e = tol;
    %Ciclo criado, que realizará uma iterada sempre que as condições forem
    %reunidas, ou seja, sempre que o número i da iterada não seja superior a
    %N e que o erro absoluto e da aproximação seja superior à tolerância
    %tol
    while i <= N && e >= tol
        i = i+1;
        %A equação de Freudenstein fornece uma função f(x) dada por:
        %f(x)=k1*cos(x)-k2*cos(beta)+k3-cos(beta-x), de onde também se
        %obtem a derivada f'(x)=-k1*sin(x)-sin(beta-x). No código, f' está
        %representada por df
        %Pelo método de Newton, cada aproximação é dada por
        %x(i+1) = x(i) + dx. onde dx obtem-se de dx=-f(x(i))/f'(x(i))
        %A cada iterada do ciclo é calculado o f, que corresponde a f(x),
        %sendo x a última aproximação feita, o df, que corresponde a f'(x),
        %o dx e finalmente o xn, que corresponde à aproximação que está a
        %ser atualmente calculada. No fim, adiciona-se esse xn ao vetor das
        %iteradas e recomeça-se o ciclo
        f = k1*cos(x0) - k2*cos(beta) + k3 - cos(beta-x0);
        df = -k1*sin(x0) - sin(beta-x0);
        dx = f/df;
        xn = x0 - dx;
        e = abs(x0-xn);
        x(i) = xn;
        x0 = xn;
    end
end
