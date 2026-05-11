%Esta função servirá para determinar os coeficientes alfa e beta de uma
%função, que correspondem, respetivamente, à ordenada na origem e ao
%declive, tal como pedido na alínea d)

function [alfa,beta] = Proj_MC_alinea_d(xi,yi)
    %Nº de pontos da lista
    N = length(xi);

    %Somatórios
    sum_xi = sum(xi);% Soma dos valores de xi
    sum_yi = sum(yi);% Soma dos valores de yi
    sum_xi2 = sum(xi.^2);% Soma dos quadrados dos valores de xi
    sum_xiyi = sum(xi .* yi);% Soma dos produtos xi * yi

    % Resolução do sistema de equações que nos dá os coeficientes
    A = [N, sum_xi; sum_xi, sum_xi2];
    B = [sum_yi; sum_xiyi];
    solucao = A \ B;
    alfa = solucao(1);
    beta = solucao(2);
end