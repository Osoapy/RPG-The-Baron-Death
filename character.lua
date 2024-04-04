local character = {}

function character.new(name)
    character.name = name

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

    function character.setCorpse(corpse)
        character.attribute[1] = corpse
    end

    function character.setAgility(agility)
        character.attribute[2] = agility
    end

    function character.setCharisma(charisma)
        character.attribute[3] = charisma
    end

    function character.setIntelligence(intelligence)
        character.attribute[4] = intelligence
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