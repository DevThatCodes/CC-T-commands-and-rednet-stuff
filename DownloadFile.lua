local params = {...}
local fileName = params[0]
local url = params[1]
local needToDel = params[2]

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

if needToDel == 1 then
    shell.run("delete ", fileName)
end

print("wget", url)
shell.run("wget", url)

print("rename", mysplit(mysplit(url, "/")[4], "?")[0], fileName)
shell.run("rename", mysplit(mysplit(url, "/")[4], "?")[0], fileName)