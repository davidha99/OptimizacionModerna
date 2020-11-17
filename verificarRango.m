function sw2 = verificarRango(rango, limInf, limSup)
    sw2 = true;
           
    if limInf > limSup
        sw2 = false;
    elseif ~(rango(1) <= limInf && limInf <= rango(2))
        sw2 = false;
    elseif ~(rango(1) <= limSup && limSup <= rango(2))
        sw2 = false;
    end
end
    