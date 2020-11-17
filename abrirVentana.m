function abrirVentana(sw1, sw2, metodo)
    if sw1 && sw2
        if metodo == 2
            close(optimizacionModerna)
            genetico
        elseif metodo == 3
            close(optimizacionModerna)
            recorridoSimulado
        end
    elseif ~sw1 && ~sw2
        disp('Dimensión y rango inválidos')
    elseif ~sw1
        disp('Dimensión inválida')
    elseif ~sw2
        disp('Rango inválido')
    end
end
        
    