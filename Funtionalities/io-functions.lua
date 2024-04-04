-- Defining global variables
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

  breakLines = function (number)
      for i = 1, number, 1 do
          print()
      end
  end
}

return main