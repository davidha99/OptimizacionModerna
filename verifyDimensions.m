% --- Verify number of dimensions
function sw1 = verifyDimensions(funcDimension, usrDimension)
    sw1 = true;
    if funcDimension ~= 0
        if ~(usrDimension ~= 0 && usrDimension <= funcDimension)
            sw1 = false;
        end
    end
end