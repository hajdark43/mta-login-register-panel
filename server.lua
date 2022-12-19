function outButDxChat (Text,player,r,p,g)
	exports["guimessages"]:outputServer(player,Text,r,p,g)
end

function loginPlayer(username, password)
	local account = getAccount(username, password)
	if (account ~= false) then
		logIn(client, account, password)
		triggerClientEvent(client, "onClientPlayerLogin", client)
		triggerClientEvent(client, "GM:Client", client, "Login")
		exports["Notice"]:outputNotice(client,"#ffffff Welcome #33cccc"..getPlayerName(client).."", "info")
	end
end
addEvent("login", true)
addEventHandler("login", root, loginPlayer)

function registerPlayer(username, password )
	local accountAdded = addAccount(username, password)
	if (accountAdded) then
	   exports["Notice"]:outputNotice(client,"#00ff22Your register was successful.", "success")
	end
end
addEvent("register", true)
addEventHandler("register", root, registerPlayer)