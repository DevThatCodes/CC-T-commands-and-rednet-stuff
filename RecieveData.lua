rednet.open("back")
local id, message, protocol = rednet.recieve()
print("message: \"".. message.. "\" received from computer with id#".. id)
rednet.close("back")