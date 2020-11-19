function sw2 = verificarRangoXY(rango, limInfX, limSupX, limInfY, limSupY)
    sw2 = true;
    if isrow(rango)
        if limInfX > limSupX || limInfY > limSupY
            sw2 = false;
        elseif ~(rango(1) <= limInfX && limInfX <= rango(2)) || ~(rango(1) <= limSupX && limSupX <= rango(2))
            sw2 = false;
        elseif ~(rango(1) <= limInfY && limInfY <= rango(2)) || ~(rango(1) <= limSupY && limSupY <= rango(2))
            sw2 = false;
        end
    else
        rangoX = [rango(1,1) rango(1,2)];
        rangoY = [rango(2,1) rango(2,2)];
        if limInfX > limSupX || limInfY > limSupY
            sw2 = false;
        elseif ~(rangoX(1) <= limInfX && limInfX <= rangoX(2)) || ~(rangoX(1) <= limSupX && limSupX <= rangoX(2))
            sw2 = false;
        elseif ~(rangoY(1) <= limInfY && limInfY <= rangoY(2)) || ~(rangoY(1) <= limSupY && limSupY <= rangoY(2))
            sw2 = false;
        end
    end

    
end