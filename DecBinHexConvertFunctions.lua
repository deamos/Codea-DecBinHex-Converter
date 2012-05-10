function decToBin(x)
    local binaryNum = {}
    local quotient
    local remainder
    
    local finalAnswer
    
    while x > 1 do
        
        quotient = x/2
        remainder = x%2
        roundedQuotient = math.modf(quotient)

        table.insert(binaryNum,1,remainder)
        x = roundedQuotient
    end
    
    finalAnswer = x
    
    for x,digit in ipairs(binaryNum) do
        finalAnswer = finalAnswer .. digit
    end
    
    return finalAnswer
end

function binToDec(x)
    
    local length = string.len(x)
    local currentChar
    local exponent = length
    local sum = 0
    
    for i=1,length do
        
        currentChar = string.sub(x,i,i)
        if currentChar == "1" then
            sum = sum + 2^(exponent)
        end
        exponent = exponent - 1
        
    end
    return sum/2
end

function hexToBin(x)
    local binEq = ""
    local lookup
    
    for i=1,string.len(x) do
        lookup = string.sub(x,i,i)
        for j,k in pairs(hexData) do
            if k == lookup then
                binEq = binEq .. j
            end
        end
    end
    return binEq
end
        

function binToHex(x)
    local binEq = x
    local longForm =""
    local binLength=string.len(x)
    local hexVal=""
    local currentSet
    local binModulus = binLength%4
    local loop
    
    if binModulus <= 0 then
        for i=1,binLength%4 do
            longForm = longForm .. "0"
        end
    end
    
    longForm = longForm .. binEq
    
    loop = 1
    
    for i=1,string.len(longForm)/4 do
        currentSet = string.sub(longForm,loop,loop+3)
        hexVal=hexVal .. hexData[currentSet]
        loop = loop + 4
    end
    
    return hexVal
end

function decToHex(x)
    
    local binEq=decToBin(x)
    local hexVal=binToHex(binEq)
    
    return hexVal
end

function hexToDec(x)
    local binEq=hexToBin(x)
    local decVal=binToDec(binEq)
    return decVal
end
