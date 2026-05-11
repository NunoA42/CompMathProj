import trap.*
import simp.*
%Resolução da alínea c), onde são pedidas as aproximações da área A pelo
%método dos Trapézios para N=4,5,6,...,30 e pelo método de Simpson para 
%N=4,6,8,...,30

%Para cada método será criado um vetor com os valores das aproximações.
%Para o método dos trapézios, o vetor será Atrap e a primeira entrada será
%a aproximação de A para N=4, a segunda será a aproximação de A para N=5 e
%etc.
Atrap = ones(1,27);
%O uso de i serve exclusivamente para ajudar a aceder à entrada pretendida
%dentro do vetor
i = 1;
for itrap = 4:1:30
    %Em cada iterada, itrap corresponde ao N pretendido
    Atrap(i) = trap(itrap);
    i = i+1;
end

%Para o método de Simpson, o vetor será Asimp e a primeira entrada será a
%aproximação de A para N=4, a segunda será a aproximação de A para N=6 e
%etc.
Asimp = ones(1,14);
i = 1;
for isimp = 4:2:30
    %Em cada iterada, isimp corresponde ao N pretendido
    Asimp(i) = simp(isimp);
    i = i+1;
end