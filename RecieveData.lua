rednet.open("back")
local id, message, protocol = rednet.recieve()
print(message)
rednet.close("back")