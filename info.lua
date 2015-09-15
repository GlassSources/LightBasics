g_PluginInfo =
{
	Name = "LightBasics",
	Date = "2015-09-15",
	Description = "LightBasics is a lightweight alternative to the Java implementation of Essentials.",
	
	-- The following members will be documented in greater detail later:
	AdditionalInfo = {
		{
		Title = "Documentation",
		Contents = "Documentation is not avaiable for LightBasics at this early of development. Once, there is a steady fan base and a vast codebase, there will be a documentation.",
		},
	},
	Commands = {
			["/aboutbasics"] =
			{
				HelpString = "This command will return on what version of LightBasics is currently on.",
				Permission = "lightbasics.about",
				Handler = about,
			},
			["/setwalkspeed"] =
			{
				HelpString = "This will set the user's default walkspeed.",
				Permission = "lightbasics.setspeed",
				Handler = walkspeed,
				ParameterCombinations =
			{
				{
					Params = "speed",
					Help = "The int value of what the player wants the speed to be.",
				},
				{
					Params = "player",
					Help = "The chosen victim of the walkspeed command.",
				},
			},
			},
	},
	ConsoleCommands = {},
	Permissions = {
			["lightbasics.about"] =
				{
					Description = "Allows users to check what version of LightBasic the server is running.",
				},
			["lightbasics.setspeed"] =
				{
					Description = "Allows users to set their default speeds.",
				},	
	},
}