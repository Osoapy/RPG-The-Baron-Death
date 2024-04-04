
-- Defining what we'll export
local main = {
    createFile = function(character)
        local file = io.open(character.name .. ".txt", "w")
        if file then
            for i = 1, 6, 1 do
                file:write(character.attribute[i] .. "\n")
            end
        end
    end
}

return main