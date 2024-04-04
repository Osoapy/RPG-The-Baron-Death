-- Defining what we'll export
local main = {
    createFile = function(character)
        File = io.open(character.name .. ".txt", "w")

        File:write(character.fieldNames[1] .. ": " .. character.name .. '\n')
        File:write(character.fieldNames[2] .. ": " .. character.popularName .. '\n')
        File:write(character.fieldNames[3] .. ": " .. character.culture .. '\n')
        File:write(character.fieldNames[4] .. ": " .. character.power .. '\n')
        File:write(character.fieldNames[5] .. ": " .. character.powerRestrictions .. '\n')
        File:write(character.fieldNames[6] .. ": " .. character.ability .. '\n')
        File:write(character.fieldNames[7] .. ": " .. character.additionalDetails .. '\n')
        for i = 1, 3, 1 do
            File:write(character.pointFields[i] .. ": " .. character.attributeNames[i] .. "\n")
        end
        for i = 1, 6, 1 do
            File:write("=] " .. character.attribute[i] .. " - " .. character.attributeNames[i] .. "\n")
        end
        File:write(character.fieldNames[8] .. ": " .. character.itens .. '\n')
        File:write(character.fieldNames[9] .. ": " .. character.demageFonts .. '\n')
        File:write(character.fieldNames[10] .. ": " .. character.lore .. '\n')

        File:close()
    end
}

return main