fid = 12;
% LimI = [x , y ];
% LimS = [x , y] ;
LimI = [-5,-5];
LimS = [5,5];
NR=7; %# de iteraciones antes de bajar temperatura
Ti=15; %temperatura inicial
dim=2; %2 o 3 dimensiones
CalculaSA1(fid,LimI,LimS,NR,Ti,dim);
%%
function Min = CalculaSA1(fID,limiteInf,limiteSup, Nrepe,T,dim)
    Tf = 0.0000001;
  % Imprmimir Funcion Objetivo***********************************************
    %fplot(bfm(fID,~),[-10,10],'k'),hold on;
  % Primeras Soluciones *****************************************************
  if(dim==1)
    Sact = (limiteInf+limiteSup)/2;
  else
    Sact = [mean(limiteInf) mean(limiteSup)];
  end
  % Modelo Metropolis********************************************************
    CritAcep = @(T, delta) exp(delta/T);
  % Ciclo de busqueda********************************************************
    cont=1;
    if(dim==1)
        f1 = figure;
        h = animatedline;
        Impresion2d(cont,Sact,h);
    else
        f1= figure('Name','Sol X','NumberTitle','off');
        h = animatedline;
        f2= figure('Name','Sol Y','NumberTitle','off');
        h2 = animatedline;
        Impresion3d(cont,Sact,h,h2);
    end
    while(T>Tf)
       for c = 1:Nrepe
           if(dim==1)
            Scand = GenerarVecino(Sact,limiteInf,limiteSup);
           else
            Scand = GenerarVecino3d(Sact,limiteInf,limiteSup);
           end
            delta = bfm(fID,Scand) - bfm(fID,Sact);
            if(rand()> CritAcep(T,delta) || delta<0)
               Sact = Scand; 
            end
            if(dim==1)
                Impresion2d(cont,Sact,h);
                cont=cont+1;
            else
                Impresion3d(cont,Sact,h,h2);
                cont=cont+1;
            end
       end
       T = Cooling(T);
    end
    % Impresion de Resultados**************************************************
    f2 = figure;
    plot(Sact,bfm(fID,Sact),'d',"markersize",10);
    disp("Valor de X= ");
    disp(Sact);
    disp("Coste= ");
    disp(bfm(fID,Sact));
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
function Impresion2d(cont,Sact,h)
        addpoints(h,cont,Sact);
        cont=cont+1;
        drawnow;
end
%%
function Impresion3d(cont,Sact,h,h2)
    addpoints(h,cont,Sact(1,1));
    addpoints(h2,cont,Sact(1,2));
    drawnow;
end
%%
 function Snew = GenerarVecino3d(SolActual,limInf,limSup)
     x = SolActual(1,1)+1*(-1 + (1+1)*rand());
     y = SolActual(1,2)+1*(-1 + (1+1)*rand());
     while(x<limInf(1) || x>limSup(1))
        x = SolActual(1,1)+1*(-1 + (1+1)*rand());
     end
     while(y<limInf(2) || y>limSup(2))
        y = SolActual(1,2)+1*(-1 + (1+1)*rand());
     end
     Snew = [x y];
end
