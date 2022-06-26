-- Single comment: Output text on the console
print("Hello World!")

--[[
	nil = null
	number 1 or 1.1
	string 'content' or "content"
	boolean true false
	table
]]

print([[
	"=== Variable declaration ==="
]])

--local is used to declare a local variable
local name
name = "Anderson"
print(name)

--clear the variable
name = nil
if (name == nil) then
	name = ""
end

print([[
	"=== Concat ==="
]])

local firstAndLastName = "Anderson Marques"

-- math operations with number inside string and string concatenation
print(firstAndLastName .. " " .. name .. (" " .. 5 + 2 ^ "3"))

if (nil ~= false) then
	print("nil is not equals false")
end

print([[
	"=== Global variable ==="
]])

-- variable without local keyword is considered global. Recommended use Uppercase like: _G.VariableName
_G.MyGlobalVariable = "Lorem Ipsum Global"
print(_G.MyGlobalVariable)

-- type check
print(type(firstAndLastName))
