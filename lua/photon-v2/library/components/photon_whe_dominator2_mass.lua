local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "photon_whe_dominator2_mass"
COMPONENT.Title = "Whelen Dominator (x2) MSP"
COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.States = {
	[1] = "R",
	[2] = "B",
	[3] = "A",
	[4] = "A"
}

COMPONENT.Category = "Interior"
COMPONENT.Model = "models/sentry/props/dominator2.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width 	= 3.7,
			Height	= 1.85,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_dominator_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_dominator_shape.png").MaterialName,
			Scale = 1.25,
			ForwardBloomOffset = 0.1,
			ForwardVisibilityOffset = -0.3
		},
	},
	["Projected"] = {
		Illumination = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 1.5,
			FOV = 90
		}
	}
}

COMPONENT.StateMap = "[1/3] 1 [2/4] 2"

COMPONENT.Elements = {
	[1] = { "Light", Vector( -2.04, 0.2, 0 ), Angle( 0, 180, 0 ) },
	[2] = { "Light", Vector( 2.04, 0.2, 0 ), Angle( 0, 180, 0 ) },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2",
			[2] = "1",
			[3] = "2",
		},
		Sequences = {
			ALL = { 1 },
			ALT = sequence():Alternate( 2, 3, 8 ),
			DOUBLE_FLASH_HOLD = { 2, 0, 2, 2, 2, 2, 3, 0, 3, 3, 3, 3,  0 },
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			All = "DOUBLE_FLASH_HOLD"
		},
		["MODE2"] = { All = "DOUBLE_FLASH_HOLD" },
		["MODE3"] = { All = "DOUBLE_FLASH_HOLD" },
	}
}

Photon2.RegisterComponent( COMPONENT )