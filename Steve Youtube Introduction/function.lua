--[[
    https://www.lua.org/pil/16.html

    When the funcion accept the first parameter as self then insted of invoke like item.consume(item, 3)
        you can just use like item:consume(3)
]]

local function displayAge(age, futureAge)
    print(string.format("\nShowing data for age: %d and future age: %d", age, futureAge))
    print("You have " .. age .. " years old")
    print("You will have " .. futureAge .. " in " .. (futureAge - age) .. " years")
    local todayDayMonth = os.date("%d/%m")
    local bornYear = os.date("%Y") - age
    print("if you have born in " .. todayDayMonth .. " then you where born in the year " .. bornYear)
end

for i = 1, 3, 1 do
    local age = math.random(18, 99)
    local futureAge = math.random(age, 99)
    displayAge(age, futureAge)
end

local function funcWithDefaultValue(value)
    value = value or 123
    print(value)
end

print("\nFunction with optional param")
funcWithDefaultValue()
funcWithDefaultValue(1)

print("\nFunction with multiple returns (like a tuple)")
local function getCurrentDateComponents()
    return os.date("%d"), os.date("%m"), os.date("%Y")
end

local day, month, year = getCurrentDateComponents()
print(day .. "/" .. month .. "/" .. year)

print("\nRecursion")
local function getFibonacciAtPosition(maxIteration, currentIteration, previousValue, sigma)
    if currentIteration > maxIteration then
        return sigma
    end

    sigma = getFibonacciAtPosition(maxIteration, currentIteration + 1, sigma, previousValue + sigma)
    return sigma
end

print(getFibonacciAtPosition(12, 1, 1, 1))

print("\nVarargs function")
local function sumNumbers(...)
    print(...)
    local sigma = 0
    local data = { ... }
    for i = 1, #data do
        sigma = sigma + data[i]
    end
    return sigma
end

print(sumNumbers(1, 2, 3, 4))

print("\nColon & Dot")
local function Pet(name)
    return {
        name = name,
        status = "Hungry",
        eat = function(self)
            self.status = "Full"
        end,
        drink = function(self)
            self.status = self.status .. " and thirstyless"
        end
    }
end

local cat = Pet("Tom")
print(cat.status)
cat:eat() -- same as cat.eat(cat)
cat.drink(cat) -- weird
print(cat.status)
