-- public lua file declarations
PLUGIN = nil

function notImplemented(player)
	player:SendMessageFailure("[LIGHTBASICS] Sorry, that feature has not been implemented fully.")
end
function sendLog(string)
	LOG(string)
end
-- init cuberite
function Initialize(Plugin)
	Plugin:SetName("LightBasics")
	Plugin:SetVersion(0.1)
	
	-- Declare PLUGIN variable
	PLUGIN = Plugin
	
	-- Register Cuberite Items
	cPluginManager.BindCommand("/aboutbasics", "lightbasics.about", about, " - This command will return on what version of LightBasics is currently on.")
	-- Init LOGGING
	sendLog("LightBasics has now initalized!")
	
	-- return good startup value
	return true
end

-- this should be extremely obvious lol
function OnDisable()
	sendLog("LightBasics is shutting down! All processes are going to forcely stopped.")
end

-- Command Functions

function about(Split, Player)
	-- check parameters
	if (#Split > 1) then
		Player:SendMessage(cChatColor.Red .. "Usage: /aboutbasics")
		return true
	end
	-- main code
	Player:SendMessage(cChatColor.Green .. "LightBasics is at version: " .. PLUGIN:GetVersion())
	-- send boolean so cuberite knows that its a command success
	return true
end