local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "photon_whe_500_mass"
COMPONENT.Title = "Whelen 500 MSP"
COMPONENT.Author = "Rin Hoshizora"
COMPONENT.Credits = {
	Model = "Awesom1miner",
	Code = "LilRanbay"
}

COMPONENT.States = {
	[1] = "~R",
	[2] = "~A"
}

COMPONENT.Category = "Interior"
COMPONENT.Model = "models/lightbars/whelen500ta/whelen500ta.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width 	= 6.35,
			Height	= 3.6,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_shape.png").MaterialName,
			Scale = 1.1,
			IntensityTransitions = true,
			IntensityGainFactor = 7,
			IntensityLossFactor = 3,
			DeactivationState = "~OFF"
		}
	}
}

COMPONENT.StateMap = "[2] 1 2 3 4 5 6 7 8"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 2.29, -24.12, 1.37 ), Angle( 0, -90, 0 ) },
	[2] = { "Light", Vector( 2.29, 24.12, 1.37 ), Angle( 0, -90, 0 ) },
	[3] = { "Light", Vector( 2.29, -17.22, 1.37 ), Angle( 0, -90, 0 ) },
	[4] = { "Light", Vector( 2.29, 17.22, 1.37 ), Angle( 0, -90, 0 ) },
	[5] = { "Light", Vector( 2.29, -10.34, 1.37 ), Angle( 0, -90, 0 ) },
	[6] = { "Light", Vector( 2.29, 10.34, 1.37 ), Angle( 0, -90, 0 ) },
	[7] = { "Light", Vector( 2.29, -3.48, 1.37 ), Angle( 0, -90, 0 ) },
	[8] = { "Light", Vector( 2.29, 3.48, 1.37 ), Angle( 0, -90, 0 ) }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	All = {
		Frames = {
			[0] = "[~OFF] 1 2 3 4 5 6 7 8",
			[1] = "1 2 3 4 5 6 7 8",
		},
		Sequences = {
			DEBUG = { 1 }
		}
	},
	Outer = {
		Frames = {
			[0] = "[~OFF] 1 2",
			[1] = "1 2",
			[2] = "1",
			[3] = "2",
		},
		Sequences = {
			CODE3 = sequence():Add( 2, 0, 2, 3, 0, 3 ):Stretch( 3 )
		}
	},
	Traffic = {
		Frames = {
			[0] = "[~OFF] 3 4 5 6 7 8",
			[1] = "3",
			[2] = "3 5",
			[3] = "3 5 7",
			[4] = "3 5 7 8",
			[5] = "3 5 7 8 6",
			[6] = "3 5 7 8 6 4",
			[7] = "5 7 8 6 4",
			[8] = "7 8 6 4",
			[9] = "8 6 4",
			[10] = "6 4",
			[11] = "4",
			[12] = "7 8",
			[13] = "5 7 8 6",
			[14] = "3 5 7 8 6 4",
			[15] = "3 5 6 4",
			[16] = "3 4"
		},
		Sequences = {
			LEFT = sequence():Sequential( 11, 6 ):Stretch( 3 ):Hold( 8 ):Add( 0 ):Hold( 6 ),
			RIGHT = sequence():Sequential( 1, 6 ):Stretch( 3 ):Hold( 8 ):Add( 0 ):Hold( 6 ),
			CENOUT = sequence():Sequential( 12, 14 ):Stretch( 6 ):Hold( 6 ):Add( 0 ):Hold( 6 )
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Directional"] = {
		["LEFT"] = { Traffic = "LEFT" },
		["RIGHT"] = { Traffic = "RIGHT" },
		["CENOUT"] = { Traffic = "CENOUT" }
	}
}

Photon2.RegisterComponent( COMPONENT )