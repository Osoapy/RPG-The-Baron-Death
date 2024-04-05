--- Defining global variables
IOFunctions = require("Funtionalities.io-functions")
STFunctions = require("Funtionalities.file-functions")

Will = 1
Choices = {
    [1] = function ()
              local actualCharacter = require("character")
              actualCharacter.new()

              IOFunctions.asciiArt("Anchor")
              IOFunctions.betweenSigns("You chose 1, so let's build a character!")
              IOFunctions.asciiArt("Anchor")

              IOFunctions.characterInterview(actualCharacter)

              STFunctions.createFile(actualCharacter)
              IOFunctions.asciiArt("Anchor")
          end,
    [2] = function ()
              local actualCharacter = require("character")
              actualCharacter.new()

              IOFunctions.asciiArt("camera")
              IOFunctions.betweenSigns("You chose 2, so let's alter a character!")
              IOFunctions.asciiArt("camera")

              io.write("What's the character's name? ")
              local nome = string.lower(io.read())
              IOFunctions.breakLines(1)

              STFunctions.getCharacter(nome, actualCharacter)

              IOFunctions.asciiArt("camera")
          end,
    [3] = function ()
              IOFunctions.asciiArt("camera")
              IOFunctions.betweenSigns("You chose 3, so let's list all disponible characters!")
              IOFunctions.asciiArt("camera")

              local list = ""
              STFunctions.getCharacterList()

              IOFunctions.asciiArt("camera")
          end,
    [4] = "4",
    [5] = "5",
}

while(Will ~= 6) do
    IOFunctions.mainMenu()
    IOFunctions.breakLines(1)
    io.write("-) ")
    Will = tonumber(io.read())
    local alternative = Choices[Will]
    if(alternative) then
        alternative()
    end
end