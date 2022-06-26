_G.printModule = {}

-- Jump one line and then print the given content
function printModule.printLn(content)
    print("\n" .. content)
end

-- Iterate the given array and print
function printModule.printArr(arr)
    for i = 1, #arr do
        print(arr[i])
    end
end

return _G.printModule
