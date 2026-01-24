if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.Title = [[Federal Signal Vista MSP]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/w4nou/federal_signal_vista_ultra_star_led.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2.5 ),
	Angles = Angle( 0, 0, 0 ),
	Zoom = 0.8
}

local red = { r = 255, g = 0, b = 0 }
local blue = { r = 0, g = 0, b = 255 }
local amber = { r = 255, g = 0, b = 0 }

local bScale = 0.66

-- these colors will probably be migrated into the default light states as strobe/halogen variations

local strobeStates = {
	["R"] = {
		Blend = PhotonColor( 255, 0, 0 ),
		SourceFillColor = PhotonColor( 255, 0, 128 ):Negative(true):Blend( red ):GetBlendColor(),
		GlowColor = PhotonColor( 255, 64, 128 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
		SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
		SourceDetailColor = PhotonColor( 255,255,96 ):Blend(red):GetBlendColor(), 
		InnerGlowColor = PhotonColor(255, 64, 64):Blend(red):Scale( 0.6 ):GetBlendColor(),
		ShapeGlowColor = PhotonColor(255, 25, 25):Blend(red):GetBlendColor()
	},
	["B"] = {
		Blend = PhotonColor( 0, 0, 255 ),
		-- inverted
		SourceFillColor = PhotonColor(255,0,255):Negative(true):Blend( blue ):GetBlendColor(),
		-- inverted
		GlowColor = PhotonColor(48, 0, 255):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), --*
		-- inverted
		SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), --*
		InnerGlowColor = PhotonColor(0, 64, 255):Blend(blue):Scale( bScale ):GetBlendColor(),--*
		SourceDetailColor = PhotonColor(128,255,255):Blend(blue):GetBlendColor(), --*
		ShapeGlowColor = PhotonColor(0, 0, 255):Blend(blue):GetBlendColor(), --*
	},
}

local halogenStates = {
	["A"] = {
		SourceDetailColor = PhotonColor(255,255,128):Blend(amber):GetBlendColor(), 
		SourceFillColor = PhotonColor(200,64,0):Blend(amber):GetBlendColor(),
		GlowColor = PhotonColor( 255, 100, 0 ):Blend(amber):GetBlendColor(), --*
		InnerGlowColor = PhotonColor( 255, 128, 0 ):Blend(amber):GetBlendColor(),
		ShapeGlowColor = PhotonColor( 255, 128, 0 ):Blend(amber):GetBlendColor(),
	},
}

COMPONENT.Templates = {
	["2D"] = {
		["Strobe"] = {
			Width = 7.5,
			Height = 6,
			Scale = 1.5,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_shape.png").MaterialName,
			States = strobeStates,
		},
        ["Bottom"] = {
			Width = 5,
			Height = 3,
			Scale = 1.5,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_shape.png").MaterialName,
			States = strobeStates,
		},
        ["Halogen"] = {
			Width = 7.5,
			Height = 6,
			Scale = 1.1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_shape.png").MaterialName,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
			States = halogenStates
		},
        ["Rear"] = {
			Width = 5,
			Height = 3,
			Scale = 1.1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_shape.png").MaterialName,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
			States = halogenStates
		},
	},
}

COMPONENT.States = {
	[1] = "R",
	[2] = "B",
	[3] = "~A",
	[4] = "~A",
    [5] = "W",
}

COMPONENT.StateMap = "[2] 1 2 3 4 5 6 7 8 13 [5] 10 11 [3] 12 [~SW] 9"

COMPONENT.Elements = {
	[1] = { "Strobe", Vector( -10.8, 7.2, 3.4 ), Angle( 0, 0, 0 ) },
	[2] = { "Strobe", Vector( 10.8, 7.2, 3.4 ), Angle( 0, 0, 0 ) },
    [3] = { "Strobe", Vector( -10.8, -7.2, 3.4 ), Angle( 0, 180, 0 ) },
	[4] = { "Strobe", Vector( 10.8, -7.2, 3.4 ), Angle( 0, 180, 0 ) },
    [5] = { "Strobe", Vector( -21.4, 5, 3.4 ), Angle( 0, 25, 0 ) },
	[6] = { "Strobe", Vector( 21.4, 5, 3.4 ), Angle( 0, -25, 0 ) },
    [7] = { "Strobe", Vector( -21.4, -5, 3.4 ), Angle( 0, 155, 0 ) },
	[8] = { "Strobe", Vector( 21.4, -5, 3.4 ), Angle( 0, -155, 0 ) },
    [9] = { "Halogen", Vector( 0, 8.2, 3.4 ), Angle( 0, 0, 0 ) },
    [10] = { "Bottom", Vector( -21, 5, -1.2 ), Angle( 0, 25, 0 ) },
    [11] = { "Bottom", Vector( 21, 5, -1.2 ), Angle( 0, -25, 0 ) },
    [12] = { "Rear", Vector( -15.5, -6.7, -1.2 ), Angle( 0, 167, 0 ) },
    [13] = { "Rear", Vector( 15.5, -6.7, -1.2 ), Angle( 0, -167, 0 ) },
}

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8",
            [2] = "1 2 7 8",
            [3] = "3 4 5 6",
		},
		Sequences = {
			["ALL"] = { 1 },
            ["FLASH"] = sequence():Add( 0, 0, 2, 0, 2, 0, 2, 0, 0, 3, 0, 3, 0, 3 ):SetTiming( 1/31 )
		}
	},
    ["Main"] = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8",
            [2] = "1 2 7 8",
            [3] = "3 4 5 6",
		},
		Sequences = {
			["ALL"] = { 1 },
            ["FLASH"] = sequence():Add( 0, 0, 2, 0, 2, 0, 2, 0, 0, 3, 0, 3, 0, 3 ):SetTiming( 1/31 )
		}
	},
    ["Bottom"] = {
		Frames = {
			[1] = "10 11",
            [2] = "10",
            [3] = "11",
		},
		Sequences = {
			["ALL"] = { 1 },
            ["FLASH"] = sequence():Add( 0, 0, 2, 0, 2, 0, 2, 0, 0, 3, 0, 3, 0, 3 ):SetTiming( 1/30 )
		}
	},
    ["Rear"] = {
        Off = "~OFF",
		Frames = {
			[1] = "12 13",
            [2] = "12",
            [3] = "13",
		},
		Sequences = {
			["ALL"] = { 1 },
            ["FLASH"] = sequence():Add( 3, 0, 3, 0, 2, 0, 2, 0 ):SetTiming( 1/8 )
		}
	},
    ["Center"] = {
		Off = "~OFF",
        Frames = {
			[1] = "9",
        },
		Sequences = {
			["ALL"] = { 1 },
            ["FLASH"] = sequence():Add( 1, 0, 1, 0 ):SetTiming( 1/8 )
        }
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			["Rear"] = "FLASH",
		},
		["MODE2"] = {
			["Rear"] = "FLASH",
            ["Main"] = "FLASH",
		},
		["MODE3"] = {
			["Main"] = "FLASH",
            ["Center"] = "FLASH",
            ["Bottom"] = "FLASH",
            ["Rear"] = "FLASH",
		},
	},
}