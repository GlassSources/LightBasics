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
			["/setweather"] =
			{
				HelpString = "This command will set the weather of the world you are currently on.",
				Permission = "lightbasics.setweather",
				Handler = weather,
				ParameterCombinations =
				{
					{
						Params = "weathervalue",
						Help = "The value will set which weather that will be set in the main command.",
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
			["lightbasics.setweather"] =
				{
					Description = "Allows users to set the weather of their current world they are in.",
				},	
	},
}