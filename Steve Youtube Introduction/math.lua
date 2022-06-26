local numberInString = "123"
print(type(numberInString), numberInString + 1)

local numberParsedFromString = tonumber(numberInString)
print(type(numberParsedFromString), numberParsedFromString)

-- https://www.lua.org/manual/5.4/manual.html#pdf-math

print(math.pi)

math.randomseed(12345, os.time())
print(math.random())

print(math.min(1,2,3))
print(math.max(1,2,3))

-- https://www.lua.org/pil/22.1.html
print(os.date("%d/%m/%y"))
