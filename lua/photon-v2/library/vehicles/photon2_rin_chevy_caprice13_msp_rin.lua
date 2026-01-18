if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2013 Chevrolet Caprice MSP"
VEHICLE.Vehicle		= "13caprice_sgm"
VEHICLE.Category 	= "Photon 2: Massachusetts State Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
	[15] = "photon/common/blank",
	[19] = "rin/msp/props/blue"
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 13, Material = "rin/msp/caprice13/patrol" }
				},
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Whelen Liberty",
				Components = {
					{
						Component = "photon_fedsig_integrity_44",
						Position = Vector( 0, -19, 69.7 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.95,
						BodyGroups = {
							["44in_feet"] = 1,
						},
					},
				}
			},
		}
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Components = {
					{
						Component = "photon_whe_ion_mass",
						Position = Vector( -11, 112, 36.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.7,
                        Phase = 180,
                    },
					{
						Component = "photon_whe_ion_mass",
						Position = Vector( -6, 112, 36.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.7,
                    },
                    {
						Component = "photon_whe_ion_mass",
						Position = Vector( 11, 112, 36.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.7,
                    },
					{
						Component = "photon_whe_ion_mass",
						Position = Vector( 6, 112, 36.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.7,
						Phase = 180,
                    },
				},
				Props = {
				    {
						Model = "models/schmal/chevcap13_pushbar.mdl",
						Position = Vector( 0, 114, 25 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						BodyGroups = {
							["wrap"] = 0,
						},
					},
				},
			},
		}
	},
	{
		Category = "Rear Deck",
		Options = {
			{
				Option = "Rear Deck",
				Components = {
					{
						Component = "photon_whe_dominator2_mass",
						Position = Vector( -12, -79, 55.3 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.2,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_whe_dominator2_mass",
						Position = Vector( 12, -79, 55.3 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.2,
						States = {
							[1] = "A",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
		}
	},
	{
		Category = "Spotlight",
		Options = {
			{
				Option = "Pillar Spotlight",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -32, 27, 53 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "model", Value = 0 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 8, 13, 45 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 0.9,
						Options = {
							Pole = 0,
							Base = -60,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 8, 13.8, 58.55),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 1.5, -2, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 1, 1, 1 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 0, -107, 48.5),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( 0, -95, 52.5),
						Angles = Angle( 0, 0, 5.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 0, -40, 68.3),
						Angles = Angle( 0, 0, 4.5 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.5, 26 ),
						Angles = Angle( -2, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 109.9, 18.9 ),
						Angles = Angle( -0.7, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp",
						},
					},
				}
			}
		}
	},
	{
		Category = "Windows",
		Options = {
			{
				Option = "Window",
				Props = {
					{
						Model = "models/schmal/chevcap13_windows.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "schmal/chevcap13/police_modulate"
						}
					}
				}
			},
		}
	},
}