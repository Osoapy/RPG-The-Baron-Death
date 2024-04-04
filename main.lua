-- Defining global variables
Write = io.write
IOFunctions = require("Funtionalities.io-functions")
STFunctions = require("Funtionalities.file-functions")

Will = 1
Choices = {
    [1] = function ()
        local actualCharacter = require("character")
        IOFunctions.breakLines(5)
        IOFunctions.betweenSigns("You chose 1, so let's build a character!")
        IOFunctions.breakLines(1)
        Write("Insert the character's name: ")
        actualCharacter.new(io.read())

        STFunctions.createFile(actualCharacter)
    end,
    [2] = "2",
    [3] = "3",
    [4] = "4",
    [5] = "5",
}

while(Will ~= 6) do
    IOFunctions.mainMenu()
    IOFunctions.breakLines(1)
    Write("-) ")
    Will = tonumber(io.read())
    local alternative = Choices[Will]
    if(alternative) then
        alternative()
    end
end