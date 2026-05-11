import freud.*
%Resolução da alínea c), onde é pedido o valor da aproximação, usando a
%função criada em MatLab, com dados de entrada a=1, b=4/3, c=3/2, d=2,
%beta=pi/3 e tol=10^-6. Optamos escolher a iterada inicial x0=1.77 e número
%máximo de iterações N=8. O vetor obtido é atribuído à variável x, cuja
%última entrada será a aproximação final
x = freud(1,4/3,3/2,2,pi/3,1.77,8,10^(-6));