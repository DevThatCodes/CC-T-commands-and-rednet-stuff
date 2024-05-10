local params = {...}
print(params)
local fileName = params[2]
local url = params[1]
local needToDel = params[3]

function mysplit (inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

if needToDel == "1" then
    shell.run("delete ", fileName)
end

print("wget", url)
shell.run("wget", url)