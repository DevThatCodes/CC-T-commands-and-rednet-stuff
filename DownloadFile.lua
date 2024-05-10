local params = {...}
local fileName = params[0]
local url = params[1]
local needToDel = params[2]

/*thanks to https://stackoverflow.com/questions/1426954/split-string-in-lua for function*/
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
    os.run("delete ".. fileName)
end
os.run("wget ".. url)
os.run("rename".. mysplit(mysplit(url, "/")[4], "?")[0], fileName)