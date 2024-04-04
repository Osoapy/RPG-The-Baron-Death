
-- Defining what we'll export
local main = {
    createFile = function(character)
        local file = io.open(character.name .. ".txt", "w")
        if file then
            file:write("Azazel: 45HP")
        end
    end
}

return main