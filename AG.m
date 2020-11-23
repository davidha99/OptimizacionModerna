%clear,clc;
%fid = 21;
%numIndiv=5;
%LI=-8;
%LS=-4;
%GenMAX = 500;
%AlgGen(fid,numIndiv,LI,LS,GenMAX);
%%
function minimo = AG(fid,numIndiv,LI,LS,GenMAX, f1, f3, f4)
p = GenerarPoblacion(numIndiv,LI,LS);
cosPob = Evaluar(fid,p,numIndiv);
[minimo, im] = min(cosPob);
Sact = p(im);
historico(1) = Sact;
Gen = 1;
%f4 = figure;
axes(f4);
h3=animatedline;
addpoints(h3,Gen,bfm(fid,Sact));
%f1 = figure;
axes(f1);
%figure(f1);
h=animatedline;
addpoints(h,1,Sact);
while Gen<GenMAX 
    S = Seleccion(numIndiv,p,fid);
    C = Criadero(S,p,numIndiv,LI,LS);
    p = comparar(p,C,fid);
    p = mutacion(p,numIndiv,LI,LS);
    Gen = Gen+1;
    [minimo, im] = min(cosPob);
    Sact = p(im);
    historico(Gen) = Sact;
    addpoints(h3,Gen,bfm(fid,Sact));
    addpoints(h,Gen,Sact);
    drawnow;
    if (Gen>50 && historico(Gen)==historico(Gen-25))
        break;
    end
end
minimo = Sact
fprintf("Coste: %0.4f\n",bfm(fid,Sact));
f = @(rango) bfm(fid,rango);
%f3 = figure;
axes(f3);
fplot(f,[LI,LS],'k'),hold on;
plot(Sact,bfm(fid,Sact),'d',"markersize",10);
end
%%
function c = Evaluar(fid,Poblacion,numind)
    for i = 1:numind
        c(i) = bfm(fid,Poblacion(i));  
    end
end
%%
function s = Seleccion(numIndiv,pob,fid)
%Torneo
n = 2;
MatrizConcursantes = zeros(n,2);
MatrizDescendientes = zeros(numIndiv,1);

    while (sum(MatrizDescendientes)<numIndiv)
        i = 1;
        while (i<=n)
            a = randi([1,numIndiv],1,1);
            if a~= MatrizConcursantes(:,2)
                MatrizConcursantes (i,:) = [Evaluar(fid,pob(a),1),a];
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
        if(S(i)~=0)
            for j = 1:S(i)
                crias(contador) = Engendrar(p(i),LI,LS);
                contador=contador+1;
            end
        end
    end

end
%%
function engendro = Engendrar(padre,LI,LS)
    engendro = padre+(padre* (-0.001 + (.001+.001).*rand()));
    while (engendro<LI || engendro>LS)
        engendro = padre+(padre* (-0.001 + (.001+.001).*rand()));
    end
end
%%
function pnew = comparar(p,c,fid)
    for i=1:numel(p)
        if(bfm(fid,c(i))<bfm(fid,p(i)))
            pnew(i)=c(i);
        else
            pnew(i) = p(i);
        end
    end
end
%%
function pob = mutacion(pob,numIndiv,LI,LS)
pm = 0.02;
    for i=1:numIndiv
        if(rand()<  pm)
           temp = pob(i);
           pob(i) = temp+temp*0.0005*randi([-1,1],1,1); 
           while (pob(i)<LI || pob(i)>LS)
                pob(i) = temp+temp*0.0005*randi([-1,1],1,1); 
           end
        end
    end 
end
%%
function p = GenerarPoblacion(numIndiv,LI,LS)
    p(1) = (LI + (LS-LS)*rand());
    for i = 2:numIndiv
         p(i) =  p(i-1)-rand()*randi([-1,1],1,1);  
         while (p(i)<LI || p(i)>LS)
         p(i) =  p(i-1)-rand()*randi([-1,1],1,1);  
         end
    end
end