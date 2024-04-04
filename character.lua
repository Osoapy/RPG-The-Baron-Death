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
        character.corpse = corpse
    end

    function character.setAgility(agility)
        character.agility = agility
    end

    function character.setCharisma(charisma)
        character.charisma = charisma
    end

    function character.setIntelligence(intelligence)
        character.intelligence = intelligence
    end

    function character.setMental(mental)
        character.mental = mental
    end

    function character.setInstinct(instinct)
        character.instinct = instinct
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