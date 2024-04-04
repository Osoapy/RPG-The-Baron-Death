local character = {}

function character.new()
    function character.setName(name)
        character.name = name
    end

    function character.setPopularName(popularName)
        character.popularName = popularName
    end

    function character.setCulture(culture)
        character.culture = culture
    end

    function character.setPower(power)
        character.power= power
    end

    function character.setPowerRestrictions(powerRestrictions)
        character.powerRestrictions = powerRestrictions
    end

    function character.setAbility(ability)
        character.ability = ability
    end

    function character.setAdditionalDetails(additionalDetails)
        character.additionalDetails = additionalDetails
    end

    character.attribute = {[1] = 1, [2] = 1, [3] = 1, [4] = 1, [5] = 1, [6] = 1}

    character.attributeNames = {[1] = "Corpo", [2] = "Agilidade", [3] = "Carisma", [4] = "Inteligência", [5] = "Mental", [6] = "instinto"}

    character.fieldNames = {[1] = "Nome", [2] = "Nome Popular", [3] = "Cultura", [4] = "Poder", [5] = "Restrições do Poder", [6] = "Habilidade de personagem", [7] = "Detalhes adicionais", [8] = "Itens", [9] = "Fontes de dano", [10] = "Lore"}

    character.pointFields = {[1] = "PV", [2] = "PS", [3] = "CA"}
  
    function character.setCorpse(corpse)
        character.attribute[1] = corpse
        character.pv = corpse * 3 + 20
    end

    function character.setAgility(agility)
        character.attribute[2] = agility
    end

    function character.setCharisma(charisma)
        character.attribute[3] = charisma
        character.ca = charisma * 2 + 10
    end

    function character.setIntelligence(intelligence)
        character.attribute[4] = intelligence
        character.ps = 100 + 5 * intelligence
    end

    function character.setMental(mental)
        character.attribute[5] = mental
    end

    function character.setInstinct(instinct)
        character.attribute[6] = instinct
    end

    function character.setItens(itens)
        character.itens = itens
    end

    function character.setDemageFonts(demageFonts)
        character.demageFonts = demageFonts
    end

    function character.setLore(lore)
        character.lore = lore
    end
end

return character