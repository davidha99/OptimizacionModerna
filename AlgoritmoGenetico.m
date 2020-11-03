% Algoritmo Genetico;
clear,clc;
% Comenzar
% t=0
% inicializar P(t)
% evaluar P(t)
% mientras (no condición de término) hacer:
    % t=t+1
    % seleccionar P(t) a partir de P(t-1)
    % recombinar y/o mutar P(t)
    % evaluar P(t)
% fin
% fin
numIndiv = 8;
LI = -8;
LS = -4;
Pob = PoblacionInicial(numIndiv,LI,LS)
costePob = Evaluar(Pob)
[m, im] = min(costePob)
  s = Seleccion(numIndiv,Pob)
  p = Mutacion(Pob,numIndiv)
  

%%
function p = PoblacionInicial(numIndiv,LI,LS)
    p(1) = (LI+LS)/2;
    for i = 2:1:numIndiv
         p(i) =  p(i-1)+1*(-1 + (1+1)*rand());  
    end
end
%%

function c = Evaluar(Poblacion)
    for i = 1:1:numel(Poblacion)
        c (i) = funcionObjetivo(Poblacion(i));  
    end
end

%%

function pob = Mutacion(pob,numIndiv)
pm = 0.05;
    for i=1:numIndiv
        if(rand()<  pm)
           pob(i) = pob(i)+1*(-2 + (2+2)*rand()); 
        end
    end 
end
%%
function s = Seleccion(numIndiv,pob)
%Torneo
n = 4;
MatrizConcursantes = zeros(n,2);
MatrizDescendientes = zeros(numIndiv,1);

    while (sum(MatrizDescendientes)<numIndiv)
        i = 1;
        while (i<=n)
            a = randi([1,numIndiv],1,1);
            if a~= MatrizConcursantes(:,2)
                MatrizConcursantes (i,:) = [Evaluar(pob(a)), a];
                i=i+1;
            end
        end
        [r o]=min(MatrizConcursantes(:,1));
        MatrizDescendientes(o) = MatrizDescendientes(o)+1;
    end
    s = MatrizDescendientes;

end
%%
function f = funcionObjetivo(v)
f1 = @(X) sum(abs(X.*sin(X) + 0.1*X));
f = f1(v);
end