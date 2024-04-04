-- Defining what we'll export
local main = {
    createFile = function(character)
        local list = {}
        local index = 1
        local bool = 0
        local listFile = io.open("Funtionalities/charactersList.txt", "r")
        for line in listFile:lines() do
            list[index] = line
            index = index + 1
        end

        listFile:close()

        for i = 1, index, 1 do
            if list[i] == character.name .. ".txt" then
                bool = 1
            end
        end

        if bool == 0 then
            list[index] = character.name .. ".txt"
            listFile = io.open("Funtionalities/charactersList.txt", "w")
            for i, value in ipairs(list) do
                listFile:write(value..'\n')
            end
            io.close(listFile)
        end

        File = io.open(character.name .. ".txt", "w")

        File:write(character.fieldNames[1] .. ": " .. character.name .. '\n')
        File:write(character.fieldNames[2] .. ": " .. character.popularName .. '\n')
        File:write(character.fieldNames[3] .. ": " .. character.culture .. '\n')
        File:write(character.fieldNames[4] .. ": " .. character.power .. '\n')
        File:write(character.fieldNames[5] .. ": " .. character.powerRestrictions .. '\n')
        File:write(character.fieldNames[6] .. ": " .. character.ability .. '\n')
        File:write(character.fieldNames[7] .. ": " .. character.additionalDetails .. '\n')
        File:write(character.pointFields[1] .. ": " .. character.pv .. "\n")
        File:write(character.pointFields[2] .. ": " .. character.ps .. "\n")
        File:write(character.pointFields[3] .. ": " .. character.ca .. "\n")
        for i = 1, 6, 1 do
            File:write("=] " .. character.attribute[i] .. " - " .. character.attributeNames[i] .. "\n")
        end
        File:write(character.fieldNames[8] .. ": " .. character.itens .. '\n')
        File:write(character.fieldNames[9] .. ": " .. character.demageFonts .. '\n')
        File:write(character.fieldNames[10] .. ": " .. character.lore)

        File:close()
    end
}

return main