%AG 3d
%clear,clc;
%fid = 8;
%numIndiv=5;
%LI = [0,0];
%LS = [5,6];
%GenMAX = 400;
%dim=2;
%AlgGen(fid,numIndiv,LI,LS,GenMAX);
%%
function minimo = AG3d(fid,numIndiv,LI,LS,GenMAX, f1, f2, f3)
p = GenerarPoblacion(numIndiv,LI,LS);
cosPob = Evaluar(fid,p,numIndiv);
[minimo, im] = min(cosPob);
Sact = p(:,im);
Gen = 1;
%f1= figure('Name','Sol X','NumberTitle','off');
axes(f1);
h = animatedline;
%f2= figure('Name','Sol Y','NumberTitle','off');
axes(f2);
h2 = animatedline;
Impresion3d(Gen,Sact,h,h2);
while Gen<GenMAX 
    S = Seleccion(numIndiv,p,fid);
    C = Criadero(S,p,numIndiv,LI,LS);
    p = comparar(p,C,fid);
    p = mutacion(p,numIndiv,LI,LS);
    Gen = Gen+1;
    [minimo, im] = min(cosPob);
    Sact = p(:,im);
    historico(:,Gen)=Sact;
    Impresion3d(Gen,Sact,h,h2)
    if (Gen>50 & (historico(:,Gen)==historico(:,Gen-25)))
        break;
    end
end
minimo = Sact
fprintf("Coste: %0.4f\n",bfm(fid,Sact));
%f3= figure;
axes(f3);
plot3(Sact(1),Sact(2),bfm(fid,[Sact(1),Sact(2)]),'d','markersize',10); hold on;
xprint= LI(1):(LS(1)-LI(1))/100:LS(1);
yprint= LI(2):(LS(2)-LI(2))/100:LS(2);
[X,Y] = meshgrid(xprint,yprint);
for i =1:size(X,1)
    for j = 1:size(Y,2)
        k(i,j) = bfm(fid,[X(i,j),Y(i,j)]);
    end
end
meshc(X,Y,k);
end
%%
function c = Evaluar(fid,p,numind)
    if numind==1
        c(1) = bfm(fid,p);  
    else
        for i = 1:numind
            pob=[p(1,i),p(2,i)];
            c(i) = bfm(fid,pob);  
        end
    end
end
%%
function s = Seleccion(numIndiv,pob,fid)
%Torneo
n = 2;
MatrizConcursantes = zeros(n,2);
MatrizDescendientes = zeros(numIndiv,2);

    while (sum(MatrizDescendientes(:,1))<numIndiv)
        i = 1;
        while (i<=n)
            a = randi([1,numIndiv],1,1);
            if a~= MatrizConcursantes(:,2)
                MatrizConcursantes (i,:) = [Evaluar(fid,[pob(1,a),pob(2,a)],1),a];
                i=i+1;
            end
        end
        [r o]=min(MatrizConcursantes(:,1));
        MatrizDescendientes(MatrizConcursantes(o,2)) = MatrizDescendientes(MatrizConcursantes(o,2))+1;
    end
    s = MatrizDescendientes;
end
%%
function crias = Criadero(S,p,numIndiv,LI,LS)
    contador =1;
    for i = 1:numIndiv
        if(S(i,1)~=0)
            for j = 1:S(i,1)
                [crias(1,contador),crias(2,contador)] = Engendrar(p(:,i),LI,LS);
                contador=contador+1;
            end
        end
    end

end
%%
function [engendrox,engendroy] = Engendrar(padre,LI,LS)
    engendrox = padre(1)+(padre(1)* (-0.009 + (.009+.009).*rand()));
    engendroy = padre(2)+(padre(2)* (-0.009 + (.009+.009).*rand()));
    while (engendrox<LI(1) || engendrox>LS(1))
        engendrox = padre(1)+(padre(1)* (-0.009 + (.009+.009).*rand()));
    end
    while (engendroy<LI(2) || engendroy>LS(2))
        engendroy = padre(2)+(padre(2)* (-0.009 + (.009+.009).*rand()));
    end
end
%%
function pnew = comparar(p,c,fid)
    for i=1:(numel(p)/2)
        if(bfm(fid,c(:,i))<bfm(fid,p(:,i)))
            pnew(:,i)=c(:,i);
        else
            pnew(:,i) = p(:,i);
        end
    end
end
%%
function pob = mutacion(pob,numIndiv,LI,LS)
pm = 0.02;
    for i=1:numIndiv
        if(rand()<  pm)
           tempx = pob(1,i);
           tempy = pob(2,i);
           pob(1,i) = tempx+tempx*0.005*randi([-1,1],1,1); 
           pob(2,i) = tempy+tempy*0.005*randi([-1,1],1,1); 
           while (pob(1,i)<LI(1) || pob(1,i)>LS(1))
                pob(1,i) = tempx+tempx*0.005*randi([-1,1],1,1); 
           end
           while (pob(2,i)<LI(2) || pob(2,i)>LS(2))
                pob(2,i) = tempy+tempy*0.005*randi([-1,1],1,1); 
           end
        end
    end 
end
%%
function pob = GenerarPoblacion(numIndiv,LI,LS)
    x(1) = (LI(1) + (LS(1)-LI(1))*rand());
    y(1) = (LI(2) + (LS(2)-LI(2))*rand());
    pob(1,1)=x;
    pob(2,1)=y;
    for i = 2:numIndiv
         x(i) =  x(i-1)-rand()*randi([-1,1],1,1);
         y(i) =  y(i-1)-rand()*randi([-1,1],1,1);
         while (x(i)<min(LI(1)) || x(i)>max(LS(1)))
            x(i) =  x(i-1)-rand()*randi([-1,1],1,1);  
         end
         while (y(i)<min(LI(2)) || y(i)>max(LS(2)))
            y(i) =  y(i-1)-rand()*randi([-1,1],1,1);  
         end 
         pob(1,i)=x(i);
         pob(2,i)=y(i);
    end
end
%%
function Impresion3d(cont,Sact,h,h2)
    addpoints(h,cont,Sact(1,1));
    addpoints(h2,cont,Sact(2,1));
    drawnow;
end