-- https://www.lua.org/manual/5.3/manual.html#6.4

local stringMock = "Lorem Ipsum"
print(stringMock)

-- String concat uses ..
print("Con".."cat");

print("Length", #stringMock)

local stringNumber = tostring(123)
print(type(stringNumber), stringNumber)

print(string.lower(stringMock))
print(string.upper(stringMock))

local replacedResult = string.gsub(stringMock, "m", " ")
print(replacedResult)

local subString = string.sub(stringMock, 0, 5)
print(subString)

print(string.format("Two float digits of pi: %.2f", math.pi))

print([[
	"=== Multiline String ==="
]])

local descriptionWithMultiline = [[
Line 1
Line 2
Lorem Ipsum
]]
print(descriptionWithMultiline)