if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline MSP"
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2: Massachusetts State Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Traffic Programs",
				SubMaterials = {
					{ Id = 21, Material = "rin/msp/econoline92/traffic" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
			},
		}
	},
    {
		Category = "Lightbar",
		Options = {
            {
				Option = "Code3 MX7000",
				Components = {
					{
						Component = "photon_c3_mx7000_mass",
						Position = Vector( 0, 7, 90 ),
						Angles = Angle( 0, 180, 1 ),
						Scale = 1.15,
					},
                }
			},

		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Whelen 295hfsa6",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Position = Vector(0, 120, 27.1),
						Angles = Angle(0, -90, 0),
						Scale = 0,
						Siren = "whelen_295hfsa6"
					},
				}
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp_old",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 107, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp_old",
						},
					},
				}
			}
		}
	},
}