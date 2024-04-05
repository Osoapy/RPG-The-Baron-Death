local character = {}

function character.new()
    function character.setName(name)
        name = string.lower(name)
        character.field[1] = name
        character.name = name
    end

    function character.setPopularName(popularName)
        character.field[2] = popularName
        character.popularName = popularName
    end

    function character.setCulture(culture)
        character.field[3] = culture
        character.culture = culture
    end

    function character.setPower(power)
        character.field[4] = power
        character.power= power
    end

    function character.setPowerRestrictions(powerRestrictions)
        character.field[5] = powerRestrictions
        character.powerRestrictions = powerRestrictions
    end

    function character.setAbility(ability)
        character.field[6] = ability
        character.ability = ability
    end

    function character.setAdditionalDetails(additionalDetails)
        character.field[7] = additionalDetails
        character.additionalDetails = additionalDetails
    end

    character.attributeNames = {[1] = "Corpo", [2] = "Agilidade", [3] = "Carisma", [4] = "Inteligência", [5] = "Mental", [6] = "Instinto"}

    character.attribute = {[1] = 1, [2] = 1, [3] = 1, [4] = 1, [5] = 1, [6] = 1}

    character.setAttribute = {
        [1] = function (value)
                  character.attribute[1] = value
                  character.pointField[1] = value * 3 + 20
              end,
        [2] = function (value)
                  character.attribute[2] = value
              end,
        [3] = function (value)
                  character.attribute[3] = value
                  character.pointField[3] = value * 2 + 10
              end,
        [4] = function (value)
                  character.attribute[4] = value
                  character.pointField[3] = value * 5 + 100
              end,
        [5] = function (value)
                  character.attribute[5] = value
              end,
        [6] = function (value)
                  character.attribute[6] = value
              end
    }

    character.fieldNames = {[1] = "Nome", [2] = "Nome Popular", [3] = "Cultura", [4] = "Poder", [5] = "Restrições do Poder", [6] = "Habilidade de personagem", [7] = "Detalhes adicionais", [8] = "Itens", [9] = "Fontes de dano", [10] = "Lore"}

    character.field = {[1] = "", [2] = "", [3] = "", [4] = "", [5] = "", [6] = "", [7] = "", [8] = "", [9] = "", [10] = ""}

    character.setField = {
        [1] = function (value)
                  character.field[1] = value
              end,
        [2] = function (value)
                  character.field[2] = value
              end,
        [3] = function (value)
                  character.field[3] = value
              end,
        [4] = function (value)
                  character.field[4] = value
              end,
        [5] = function (value)
                  character.field[5] = value
              end,
        [6] = function (value)
                  character.field[6] = value
              end,
        [7] = function (value)
                  character.field[7] = value
              end,
        [8] = function (value)
                  character.field[8] = value
              end,
        [9] = function (value)
                  character.field[9] = value
              end,
        [10] = function (value)
                  character.field[10] = value
               end
    }

    character.pointFields = {[1] = "PV", [2] = "PS", [3] = "CA"}

    character.pointField = {[1] = 0, [2] = 0, [3] = 0}

    character.setPointField = {
        [1] = function (value)
            character.pointField[1] = value
        end,
        [2] = function (value)
            character.pointField[2] = value
        end,
        [3] = function (value)
            character.pointField[3] = value
        end
    }

    function character.setCorpse(corpse)
        character.attribute[1] = corpse
        character.pointField[1] = corpse * 3 + 20
        character.pv = corpse * 3 + 20
    end

    function character.setAgility(agility)
        character.attribute[2] = agility
    end

    function character.setCharisma(charisma)
        character.attribute[3] = charisma
        character.pointField[3] = charisma * 2 + 10
        character.ca = charisma * 2 + 10
    end

    function character.setIntelligence(intelligence)
        character.attribute[4] = intelligence
        character.pointField[2] = 100 + 5 * intelligence
        character.ps = 100 + 5 * intelligence
    end

    function character.setMental(mental)
        character.attribute[5] = mental
    end

    function character.setInstinct(instinct)
        character.attribute[6] = instinct
    end

    function character.setItens(itens)
        character.field[8] = itens
        character.itens = itens
    end

    function character.setDemageFonts(demageFonts)
        character.field[9] = demageFonts
        character.demageFonts = demageFonts
    end

    function character.setLore(lore)
        character.field[10] = lore
        character.lore = lore
    end

    function character.print()
        for i = 1, 7, 1 do
            io.write(character.fieldNames[i] .. ": " .. character.field[i] .. '\n')
        end
        for i = 1, 3, 1 do
            io.write(character.pointFields[i] .. ": " .. character.pointField[i] .. "\n")
        end
        for i = 1, 6, 1 do
            io.write("=] " .. character.attribute[i] .. " - " .. character.attributeNames[i] .. "\n")
        end
      for i = 8, 10, 1 do
          io.write(character.fieldNames[i] .. ": " .. character.field[i] .. '\n')
      end
    end
end

return character