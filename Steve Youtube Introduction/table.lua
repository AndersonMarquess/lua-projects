local printModule = require("printModule")
local numbers = { 131, 15, 15313135, 4, 54, 87, 697, 4, 75 }

printModule.printLn("Printing all array \"numbers\" content")
printModule.printArr(numbers)

printModule.printLn("Printing all array \"numbers\" ordered ASC")
table.sort(numbers)
printModule.printArr(numbers)

printModule.printLn("Printing all array \"numbers\" ordered DESC")
table.sort(numbers, function(a, b) return a > b end)
printModule.printArr(numbers)

printModule.printLn("Insert the current time number as the last item in the array \"numbers\"")
table.insert(numbers, #numbers + 1, os.time())
printModule.printArr(numbers)

printModule.printLn("Joins the array content")
local names = { "Anderson", "Marques" }
print(table.concat(names, " "))
printModule.printArr(names)

printModule.printLn("Sub array")
local keyBasedTable = {
    keyNumbers = { 100, 200, 300 },
    keyLetters = { "a", "b", "c" }
}
print(keyBasedTable["keyNumbers"][1])
print(keyBasedTable["keyLetters"][3])
