-- Defining global variables
Write = io.write

local equalSigns = function (string)
    local function equalOrPlus(leng, sense)
        if leng % 2 == 0 then
            if sense == "forwards" then
                for i = 1, math.floor(leng / 2), 1 do
                    if i % 2 == 1 then
                        Write("=")
                    else
                        Write("+")
                    end
                end
            else
                for i = 1, math.floor(leng / 2), 1 do
                    if i % 2 == 1 then
                        Write("+")
                    else
                        Write("=")
                    end
                end
                return
            end
            equalOrPlus(leng, "backwards")
        else
          for i = 1, leng, 1 do
              if i % 2 == 1 then
                  Write("=")
              else
                  Write("+")
              end
          end
        end
    end
    equalOrPlus(#string, "forwards")
    Write '\n'
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
      Write("Insert the character's name: ")
      actualCharacter.new(io.read())
    
      Write("Insert the character's popular name: ")
      actualCharacter.setPopularName(io.read())
    
      Write("Insert the character's culture: ")
      actualCharacter.setCulture(io.read())
    
      Write("Insert the character's power: ")
      actualCharacter.setPower(io.read())
    
      Write("Insert the character's power restrictions: ")
      actualCharacter.setPowerRestrictions(io.read())
    
      Write("Insert the character's ability: ")
      actualCharacter.setAbility(io.read())
    
      Write("Insert the character's additional details: ")
      character.setAdditionalDetails(io.read())
    
      Write("Insert the character's corpse: ")
      character.setCorpse(io.read())
    
      Write("Insert the character's agility: ")
      character.setAgility(io.read())
    
      Write("Insert the character's charisma: ")
      character.setCharisma(io.read())
    
      Write("Insert the character's intelligence: ")
      character.setIntelligence(io.read())
    
      Write("Insert the character's mental: ")
      character.setMental(io.read())
    
      Write("Insert the character's instinct: ")
      character.setInstinct(io.read())
    
      Write("Insert the character's itens: ")
      character.setItens(io.read())
    
      Write("Insert the character's demage fonts: ")
      character.setDemageFonts(io.read())
    
      Write("Insert the character's lore: ")
      character.setLore(io.read())
  end,

  breakLines = function (number)
      for i = 1, number, 1 do
          print()
      end
  end
}

return main