-- Defining global variables
local createFile = function(character)
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

    for i = 1, 7, 1 do
        File:write(character.fieldNames[i] .. ": " .. character.field[i] .. '\n')
    end
    for i = 1, 3, 1 do
        File:write(character.pointFields[i] .. ": " .. character.pointField[i] .. "\n")
    end
    for i = 1, 6, 1 do
        File:write("=] " .. character.attribute[i] .. " - " .. character.attributeNames[i] .. "\n")
    end
    for i = 7, 10, 1 do
        File:write(character.fieldNames[i] .. ": " .. character.field[i] .. '\n')
    end

    File:close()
end

-- Defining what we'll export
local main = {
    createFile = function(character)
        createFile(character)
    end,


    getCharacterList = function()
        local listFile = io.open("Funtionalities/charactersList.txt", "r")

        for line in listFile:lines() do
            print(line)
        end

        listFile:close()
    end,


    getCharacter = function(name, character)
        -- Declaring variables
        local list = {}
        local listFile = io.open(name .. ".txt", "r")

        -- Reading the entire file
        for line in listFile:lines() do
            table.insert(list, line)
        end
        listFile:close()

        -- Setting the character's properties
        character.setName(string.gsub(list[1], "Nome: ", ""))
        character.setPopularName(string.gsub(list[2], "Nome Popular: ", ""))
        character.setCulture(string.gsub(list[3], "Cultura: ", ""))
        character.setPower(string.gsub(list[4], "Poder: ", ""))
        character.setPowerRestrictions(string.gsub(list[5], "Restrições do Poder: ", ""))
        character.setAbility(string.gsub(list[6], "Habilidade de personagem: ", ""))
        character.setAdditionalDetails(string.gsub(list[7], "Detalhes adicionais: ", ""))
        character.setCorpse(string.match(list[11], '%d[%d.,]*'))
        character.setAgility(string.match(list[12], '%d[%d.,]*'))
        character.setCharisma(string.match(list[13], '%d[%d.,]*'))
        character.setIntelligence(string.match(list[14], '%d[%d.,]*'))
        character.setMental(string.match(list[15], '%d[%d.,]*'))
        character.setInstinct(string.match(list[16], '%d[%d.,]*'))
        character.setItens(string.gsub(list[17], "Itens: ", ""))
        character.setDemageFonts(string.gsub(list[18], "Fontes de dano: ", ""))
        character.setLore(string.gsub(list[19], "Lore: ", ""))

        -- Printing the character
        character.print()

        -- Reading what will change
        local will = 1
        while will ~= "0" do
            io.write("\nWhat do you want to change? Use 0 for nothing: ")
            will = io.read()
            local index = 0

            -- Seeing if it is a field
            for i = 1, 7, 1 do
                if string.lower(will) == string.lower(character.fieldNames[i]) then
                    io.write("What do you want to change it to? ")
                    character.setField[i](io.read())
                end
                index = index + 1
            end

            -- Seeing if it is a point field
            for i = 1, 3, 1 do
                if string.lower(will) == string.lower(character.pointFields[i]) then
                    io.write("What do you want to change it to? ")
                    character.setPointField[i](io.read())
                end
                index = index + 1
            end

            -- Seeing if it is an attribute
            for i = 1, 6, 1 do
                if string.lower(will) == string.lower(character.attributeNames[i]) then
                    io.write("What do you want to change it to? ")
                    character.setAttribute[i](io.read())
                end
                index = index + 1
            end

            -- Seeing if it is a field
            for i = 8, 10, 1 do
                if string.lower(will) == string.lower(character.fieldNames[i]) then
                    io.write("What do you want to change it to? ")
                    character.setField[i](io.read())
                end
                index = index + 1
            end

            -- Updating .txt file
            createFile(character)

            print("Your updates are now visible...\n")

            -- Printing the results
            character.print()
        end
    end,


    delete = function(name)
        os.remove(name .. ".txt")
        local list = {}
        local bool = 1
        local index = 1
        local listFile = io.open("Funtionalities/charactersList.txt", "r")
        for line in listFile:lines() do
            list[index] = line
            index = index + 1
        end

        listFile:close()

        for i = 1, index, 1 do
            if list[i] == name .. ".txt" then
                table.remove(list, i)
            end
        end

        os.remove("Funtionalities/charactersList.txt")
        listFile = io.open("Funtionalities/charactersList.txt", "w")
        for i, value in ipairs(list) do
            listFile:write(value)
        end

        io.close(listFile)
    end
}

return main