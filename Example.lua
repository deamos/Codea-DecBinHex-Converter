-- Use this function to perform your initial setup
function setup()
    saveProjectInfo("Author","Deamos")
    saveProjectInfo("Description", "This projects contains the functions to convert between Base10, Base2, and Base16 Numbers")
    
    num=decToBin(60010)
    print(num)
    newNum=binToDec(num)
    print (newNum)
    nextNum = decToHex(608741)
    print (nextNum)
    nextNum = hexToDec(nextNum)
    print(nextNum)
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)

    -- This sets the line thickness
    strokeWidth(5)
    
    -- Do your drawing here
    
end
        
        
        
        
    
    