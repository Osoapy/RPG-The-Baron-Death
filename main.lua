-- Defining global variables
Write = io.write
IOFunctions = require("Funtionalities.io-functions")

Vontade = 1
while(Vontade ~= 6) do
    IOFunctions.menu()
    Write("-) ")
    Vontade = tonumber(io.read())
end