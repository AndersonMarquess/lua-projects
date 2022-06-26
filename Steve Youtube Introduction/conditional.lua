print([[
	"=== Conditional ==="
]])

local minAllowedYear = 1990
local currentYear = tonumber(os.date("%Y"))
if (currentYear >= minAllowedYear) then
	print("Valid requirement")
else
	print("Not meet the minimum requirement")
end

local age = 20
if not (age < 20) then
	print("Age is not less then 20")
end
