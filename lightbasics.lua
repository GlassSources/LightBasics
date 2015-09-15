-- public lua file declarations
PLUGIN = nil

function sendLog(string)
	LOG(string)
end
-- init cuberite
function Initialize(Plugin)
	Plugin:SetName("LightBasics")
	Plugin:SetVersion(0.1)
	
	-- Declare PLUGIN variable
	PLUGIN = Plugin
	
	-- Init LOGGING
	sendLog("LightBasics has now initalized!")
	
	-- return good startup value
	return true
end

-- this should be extremely obvious lol
function OnDisable()
	sendLog("LightBasics is shutting down! All processes are going to forcely stopped.")
end