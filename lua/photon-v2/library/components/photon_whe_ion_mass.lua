local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Name = "photon_whe_ion_mass"
COMPONENT.Title = "Whelen Ion MSP"
COMPONENT.Category = "Perimeter"
COMPONENT.Credits = {
	Model = "Sentry",
	Code = "Schmal"
}

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 90, 0 ),
	Zoom = 3
}

COMPONENT.Model = "models/sentry/props/ion_photon.mdl"

local size = 6

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width  = size,
			Height = size/4,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_ion_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_ion_shape.png").MaterialName,
			Scale = 1.2,
			Ratio = 1.2
		}
	}
}

COMPONENT.States = {
	[1] = "B",
	[2] = "R",
	[3] = "W"
}

COMPONENT.StateMap = "[1/2/3] 1"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 0.6, 0 ), Angle( 0, 0, 0 ) }
}

COMPONENT.ElementGroups = {
	Light = { 1 }
}

COMPONENT.Segments = {
	Light = {
		Frames = {
			[1] = "Light",
			[2] = "[2] Light",
			[3] = "[3] Light",
			[4] = "[OFF] Light"
		},
		Sequences = {
			ON = { 1 },
			["OFF"] = { 4 },
			["DOUBLE_FLASH_MSP"] = sequence():FlashHold( 1, 2, 3 ):AppendPhaseGap(),
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Light = "DOUBLE_FLASH_MSP"
		},
		["MODE2"] = {
			Light = "DOUBLE_FLASH_MSP"
		},
		["MODE3"] = {
			Light = "DOUBLE_FLASH_MSP"
		}
	}
}

Photon2.RegisterComponent( COMPONENT )

--[[
		SURFACE MOUNT VARIANT
--]]

COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "photon_whe_ion_surface_mass"

COMPONENT.WorkshopRequirements = {
	[2932505261] = "Anemolis Prop Pack"
}

COMPONENT.Author = "Photon"
COMPONENT.Title = "Whelen Ion (Surface) MSP"
COMPONENT.Base = "photon_whe_ion_mass"
COMPONENT.Credits = {
	Model = "Mighty/SGM/Anemolis",
	Code = "Schmal"
}
COMPONENT.Category = "Perimeter"
COMPONENT.Model = "models/anemolis/props/anemolis_surfaceion.mdl"

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 90, 0 ),
	Zoom = 3
}


COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 1.8, 0 ), Angle( 0, 0, 0 ) }
}

Photon2.RegisterComponent( COMPONENT )

COMPONENT = Photon2.LibraryComponent()
COMPONENT.Title = "Whelen Ion (Surface Bracket) MSP"
COMPONENT.Name = "photon_whe_ion_surface_bracket_mass"
COMPONENT.Base = "photon_whe_ion_surface_mass"
COMPONENT.Model = "models/anemolis/props/anemolis_lsurfaceion.mdl"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 1.8, 0 ), Angle( 0, 0, 0 ) }
}

Photon2.RegisterComponent( COMPONENT )


COMPONENT = Photon2.LibraryComponent()
COMPONENT.Title = "Whelen Ion (Spitfire) MSP"
COMPONENT.Name = "photon_whe_ion_spitfire_mass"
COMPONENT.Base = "photon_whe_ion_mass"
COMPONENT.Model = "models/schmal/whelen_spitfire.mdl"
COMPONENT.Author = {
	["Model"] = "Karn14, Schmal",
	["Code"] = "Schmal"
}

COMPONENT.DefineOptions = {
	["Mount"] = {
		Arguments = { { "type", "number" } },
		Description = "Adjusts the mount type.",
		Action = function( self, type )
			self.BodyGroups = self.BodyGroups or {}
			self.BodyGroups["mount"] = type
		end
	},
	["Angle"] = {
		Arguments = { { "angle", "number" } },
		Description = "Adjusts the base mount's rotation.",
		Action = function( self, angle )
			self.Bones = self.Bones or {}
			self.Bones["suction_mount"] = self.Bones["suction_mount"] or { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 }
			self.Bones["suction_mount"][2] = Angle( angle, 0, 0 )
			self.Bones["extended_mount"] = self.Bones["extended_mount"] or { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 }
			self.Bones["extended_mount"][2] = Angle( angle, 0, 0 )
		end
	}

}

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 0.5, 0 ), Angle( 0, 0, 0 ) }
}

Photon2.RegisterComponent( COMPONENT )