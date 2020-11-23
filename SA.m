%LimI = [1 ; 1 ];
%LimS = [10 ; 10] ;
% LimI = -8;
% LimS = -4;
%NR=7;
%Ti=15;
%dim=2;
%CalculaSA1(fid,LimI,LimS,NR,Ti,dim);
%%
function Min = SA(fID,limiteInf,limiteSup, Nrepe,T,dim, f1, f2, f3, f4)
    Tf = 0.0000001;
  % Imprmimir Funcion Objetivo***********************************************
    f = @(rango) bfm(fID,rango);
  % Primeras Soluciones *****************************************************
  if(dim==1)
    Sact = ((limiteInf*rand())+(limiteSup*rand()))/2;
    %Sact = (limiteInf+limiteSup)/2;
  else
    Sact = [(limiteInf(1) + (limiteSup(1)-limiteInf(1)).*rand()) (limiteInf(2) + (limiteSup(2)-limiteInf(2)).*rand())];
  end
  % Modelo Metropolis********************************************************
    CritAcep = @(T, delta) exp(delta/T);
  % Ciclo de busqueda********************************************************
    cont=1;
    axes(f4);
    h3=animatedline;
    addpoints(h3,cont,bfm(fID,Sact));
    if(dim==1)
        %f1 = figure;
        axes(f1);
        h = animatedline;
        Impresion2d(cont,Sact,h);
    else
        %f1= figure('Name','Sol X','NumberTitle','off');
        axes(f1);
        h = animatedline;
        %f2= figure('Name','Sol Y','NumberTitle','off');
        axes(f2);
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
            addpoints(h3,cont,bfm(fID,Sact));
       end
       T = Cooling(T);
    end
    % Impresion de Resultados**************************************************
    %f3 = figure;
    axes(f3);
    if(dim==1)
        fplot(f,[limiteInf,limiteSup],'k'),hold on;
        plot(Sact,bfm(fID,Sact),'d',"markersize",10);
    end
    if(dim==2)
        plot3(Sact(1),Sact(2),bfm(fID,[Sact(1),Sact(2)]),'d','markersize',10); hold on;
        xprint= limiteInf(1):(limiteSup(1)-limiteInf(1))/100:limiteSup(1);
        yprint= limiteInf(2):(limiteSup(2)-limiteInf(2))/100:limiteSup(2);
        [X,Y] = meshgrid(xprint,yprint);
        for i =1:size(X,1)
            for j = 1:size(Y,2)
                k(i,j) = bfm(fID,[X(i,j),Y(i,j)]);
            end
        end

        meshc(X,Y,k)
    end
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
     x = SolActual(1,1)+1*(-2 + (2+2)*rand());
     y = SolActual(1,2)+1*(-2 + (2+2)*rand());
     while(x<limInf(1) || x>limSup(1))
        x = SolActual(1,1)+1*(-1 + (1+1)*rand());
     end
     while(y<limInf(2) || y>limSup(2))
        y = SolActual(1,2)+1*(-1 + (1+1)*rand());
     end
     Snew = [x y];
end
