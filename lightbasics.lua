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
	Plugin:SetVersion(1)
	
	-- Declare PLUGIN variable
	PLUGIN = Plugin
	
	-- Register Cuberite Items
	cPluginManager.BindCommand("/aboutbasics", "lightbasics.about", about, " - This command will return on what version of LightBasics is currently on.")
	cPluginManager.BindCommand("/setwalkspeed", "lightbasics.setspeed", walkspeed, " ~ This command will set the player's default walkspeed.")
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

function walkspeed(Split, Player)
	-- check parameters
	if (#Split ~= 3) then
		Player:SendMessage(cChatColor.Red .. "Usage: /setwalkspeed <walkspeed> <player>")
		return true
	end
	-- main code
	local walkspeedSuccess = false
	local setSpeed = function(player)
		if(player:GetName() == Split[2]) then
			player:SetNormalMaxSpeed(Split[3])
			Player:SendMessageSuccess(cChatColor.Green .. "The walkspeed operation successfully was issued.")
			walkspeedSuccess = true
			return true
		end
	end
	cRoot:Get():FindAndDoWithPlayer(Split[2], setSpeed)
	if not (walkspeedSuccess == true) then
		Player:SendMessageFailure(cChatColor.Red .. "" .. Split[2] .. " wasn't found.")
		return true
	end
	return true
end