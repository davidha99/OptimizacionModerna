clear,clc;
f = @(X) sum(abs(X.*sin(X) + 0.1*X));
fun = f;
LimI = -8;
LimS = -4;
NR=10;
Ti=20;
CalculaSA(fun,LimI,LimS,NR,Ti);
%%
function Min = CalculaSA(fobj,limiteInf,limiteSup, Nrepe,T)
    Tf = 0.0000001;
   
    % Imprmimir Funcion Objetivo***********************************************
    fplot(fobj,[-10,10],'k'),hold on;

    % Primeras Soluciones *****************************************************
    Sact = (limiteInf+limiteSup)/2;
    Scand = Sact+1*(-1 + (1+1)*rand());

    % Modelo Metropolis********************************************************
    delta= fobj(Scand) - fobj(Sact);
    CritAcep = @(T, delta) exp(delta/T);
    % Ciclo de busqueda********************************************************
    while(T>Tf)
       for c = 1:Nrepe
            Scand = GenerarVecino(Sact,limiteInf,limiteSup);
            delta = fobj(Scand) - fobj(Sact);
            if(rand()> CritAcep(T,delta) || delta<0)
               Sact = Scand; 
            end
       end
       T = Cooling(T);
    end
    % Impresion de Resultados**************************************************
    plot(Sact,fobj(Sact),'d',"markersize",10);
    disp("Valor de X= ");
    disp(Sact);
    disp("Coste= ");
    disp(fobj(Sact));
    Min = Sact;
end
%%
function x = GenerarVecino(SolActual,limInf,limSup)
     x = SolActual+1*(-1 + (1+1)*rand());
     while(x<limInf || x>limSup)
        x = SolActual+1*(-1 + (1+1)*rand());
     end
end
%%
function Temp = Cooling(T)
Temp = 0.85*(T);
end
%%

