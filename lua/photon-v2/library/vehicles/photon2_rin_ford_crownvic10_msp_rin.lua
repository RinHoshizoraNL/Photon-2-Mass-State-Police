if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria MSP"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
VEHICLE.Category 	= "Photon 2: Massachusetts State Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic10/patrol" }
				},
			},
			{
				Option = "K-9 Unit",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic10/k9" }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic10/supervisor" }
				},
			},
			{
				Option = "Port Authority",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic10/massport" }
				},
			},
			{
				Option = "Turnpike Patrol",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic10/masspike" }
				},
			},
		}
	},
	{
		Category = "ALPR",
		Options = {
			{
				Option = "None",
			},
			{
				Option = "ALPR",
			    Props = {
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( 32.5, -100, 49.9),
						Angles = Angle( -1, 235, -6 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 2,
							["lens cover"] = 1,
						},
					},
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( -32.5, -100, 49.9),
						Angles = Angle( -1, -55, 6 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 0,
							["lens cover"] = 1,
						},
					},
				}
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
						Component = "photon_whe_liberty_48_mass",
						Position = Vector( 0, -19, 68.6 ),
						Angles = Angle( 0.5, 90, 0 ),
						Scale = 0.8,
						BodyGroups = {
							["straps"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									"ALT_MASS"
								},
								["MODE2"] = {
									"ALT_MASS"
								},
								["MODE3"] = {
									"ALT_MASS"
								},
							},
						},
					},
				}
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
						Position = Vector( -17, -79, 51.05 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.3,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_whe_dominator2_mass",
						Position = Vector( 17, -79, 51.05 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.3,
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
						Component = "photon_par46_left",
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
                },
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 1 },
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 0 },
					{ BodyGroup = "pushbar", Value = 1 },
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "doortrim", Value = 3 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 2 },
					{ BodyGroup = "trunkemblem", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 13.5, 40 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 13.8, 58.55),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/tactld1.mdl",
						Position = Vector( 0, 10.7, 25 ),
						Angles = Angle( 0, 0, 20 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/whelen_cencom_panel.mdl",
						Position = Vector( 0, 4.2, 25 ),
						Angles = Angle( 0, 0, 20 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 0, -50, 67),
						Angles = Angle( 0, 0, 4.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_pod_trimode.mdl",
						Position = Vector( 0, -112, 47.2),
						Angles = Angle( 0, 0, 5.4 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( -20, -95, 44.5),
						Angles = Angle( -3.5, 0, 1 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( 20, -95, 47.9),
						Angles = Angle( 3.5, 0, 1 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -124.55, 36.2 ),
						Angles = Angle( -11, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp",
						},
					},
				}
			}
		}
	},
}