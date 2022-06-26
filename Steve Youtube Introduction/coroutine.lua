local function printNumbersAndPauseInHalf()
    for i = 1, 10, 1 do
        print("Routine 1: " .. i)
        if (i == 5) then
            coroutine.yield()
        end
    end
end

local routine_1 = coroutine.create(printNumbersAndPauseInHalf)

local routine_2 = coroutine.create(function()
    for i = 1, 10, 1 do
        print("Routine 2: " .. i)
    end
end)

print("Init routine 1")
coroutine.resume(routine_1)
print(coroutine.status(routine_1))

print("\nInit routine 2")
coroutine.resume(routine_2)
print(coroutine.status(routine_2))
coroutine.resume(routine_2)
print(coroutine.status(routine_2))
coroutine.resume(routine_2)
print(coroutine.status(routine_2))

print("\nContinue routine 1")
coroutine.resume(routine_1)
print(coroutine.status(routine_1))
