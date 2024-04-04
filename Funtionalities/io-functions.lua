-- Defining global variables
local equalSigns = function (string)
    local function equalOrPlus(leng, sense)
        if leng % 2 == 0 then
            if sense == "forwards" then
                for i = 1, math.floor(leng / 2), 1 do
                    if i % 2 == 1 then
                        io.write("=")
                    else
                        io.write("+")
                    end
                end
            else
                for i = 1, math.floor(leng / 2), 1 do
                    if i % 2 == 1 then
                        io.write("+")
                    else
                        io.write("=")
                    end
                end
                return
            end
            equalOrPlus(leng, "backwards")
        else
          for i = 1, leng, 1 do
              if i % 2 == 1 then
                  io.write("=")
              else
                  io.write("+")
              end
          end
        end
    end
    equalOrPlus(#string, "forwards")
    io.write '\n'
end

-- Defining what I'll export

local main = {
  mainMenu = function ()
      equalSigns("[3] List characters  [4] Delete character")
      print("[1] Create character [2] Alter character")
      print("[3] List characters  [4] Delete character")
      print("[5] Emulate battle   [6] Exit")
      equalSigns("[3] List characters  [4] Delete character")
  end,

  equalSigns = function (string)
      equalSigns(string)
  end,

  betweenSigns = function (string)
      equalSigns(string)
      print(string)
      equalSigns(string)
  end,

  characterInterview = function (actualCharacter)
      io.write("Insert the character's name: ")
      actualCharacter.setName(io.read())

      io.write("Insert the character's popular name: ")
      actualCharacter.setPopularName(io.read())

      io.write("Insert the character's culture: ")
      actualCharacter.setCulture(io.read())

      io.write("Insert the character's power: ")
      actualCharacter.setPower(io.read())

      io.write("Insert the character's power restrictions: ")
      actualCharacter.setPowerRestrictions(io.read())

      io.write("Insert the character's ability: ")
      actualCharacter.setAbility(io.read())

      io.write("Insert the character's additional details: ")
      actualCharacter.setAdditionalDetails(io.read())

      io.write("Insert the character's corpse: ")
      actualCharacter.setCorpse(io.read())

      io.write("Insert the character's agility: ")
      actualCharacter.setAgility(io.read())

      io.write("Insert the character's charisma: ")
      actualCharacter.setCharisma(io.read())

      io.write("Insert the character's intelligence: ")
      actualCharacter.setIntelligence(io.read())

      io.write("Insert the character's mental: ")
      actualCharacter.setMental(io.read())

      io.write("Insert the character's instinct: ")
      actualCharacter.setInstinct(io.read())

      io.write("Insert the character's itens: ")
      actualCharacter.setItens(io.read())

      io.write("Insert the character's demage fonts: ")
      actualCharacter.setDemageFonts(io.read())

      io.write("Insert the character's lore: ")
      actualCharacter.setLore(io.read())
  end,

  breakLines = function (number)
      for i = 1, number, 1 do
          print()
      end
  end
}

return main