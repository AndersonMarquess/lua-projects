local function addTableValues(x, y)
    return x.num + y.num
end

local metatable = {
    __add = addTableValues
}

local table1 = { num = 123 }
local table2 = { num = 7 }

setmetatable(table1, metatable)

local tableValuesSum = table1 + table2

print(tableValuesSum)
