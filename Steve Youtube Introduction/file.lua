local function buildLog(content)
    return "[ " .. os.date("%d/%m/%Y %H:%M:%S") .. " ] " .. content
end

local fileName = "file01.txt"

-- set the file target as file01.txt in append mode
local targetFile = io.open(fileName, "a")
if targetFile ~= nil then
    targetFile:write(buildLog("Hello World") .. "\n")
    targetFile:flush()
    targetFile:close() -- targetFile:close() is the same as targetFile.close(targetFile)
end
io.close()

local inputFile = io.open(fileName, "r")
if inputFile ~= nil then
    local fileContent = inputFile:read("a")
    print(fileContent)
    inputFile:close()
end
io.close()

print("\nDo you want to rename the file? [Y/N]")
local userAnswer = io.read("l");
if (string.lower(userAnswer) == "y") then
    print("Enter new name: ")
    local newName = io.read()
    local success = os.rename(fileName, newName)
    if success then
        fileName = newName
        print("File renamed")
    else
        print("Unable to rename")
    end
else
    print("Skip")
end

print("\nDo you want to delete the file? [Y/N]")
userAnswer = io.read("l");
if string.lower(userAnswer) == "y" then
    local success = os.remove(fileName)

    if success then
        print("Operation completed with success")
    else
        print("Operation fail")
    end
else
    print("Skip")
end
