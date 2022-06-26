print([[
	"=== Loops ==="
]])

-- init i as 0 go up as 20 and increment 5 each time
for i = 0, 20, 5 do
	print(i)
end

print("==========")
-- inverse loop
for i = 20, 0, -5 do
	print(i)
end

print("==========")
local myNumbers = { 1, 2, 3, 4, 7843, 4354, 45 }
-- Initial index is 1 ¯\_(ツ)_/¯
for i = 1, #myNumbers, 1 do
	print(myNumbers[i])
end

print("==========")
local dictionary = {
	a = 100,
	b = 200,
	c = 300,
}

for key, value in pairs(dictionary) do
	print(key .. " " .. value)
end
