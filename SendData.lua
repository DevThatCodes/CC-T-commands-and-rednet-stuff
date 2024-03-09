local params = {...}
rednet.open("back")
rednet.send(tonumber(params[1]), params[2])
rednet.close("back")