if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria MSP"
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
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
					{ Id = 3, Material = "rin/msp/crownvic98/patrol" }
				},
			},
			{
				Option = "K-9 Unit",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic98/k9" }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic98/supervisor" }
				},
			},
			{
				Option = "Port Authority",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic98/massport" }
				},
			},
			{
				Option = "Turnpike Patrol",
				SubMaterials = {
					{ Id = 3, Material = "rin/msp/crownvic98/masspike" }
				},
			},
		}
	},
	{
		Category = "Model Year",
		Options = {
			{
				Option = "1998",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "pillars", Value = 1 },
					{ BodyGroup = "rearfascia", Value = 0 },
				},
				Props = {
					{
						Model = "models/schmal/pushbar_cvpi96.mdl",
						Position = Vector( 0, 116, 16.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
					{
						Model = "models/gandhi/props/ts100.mdl",
						Position = Vector( 0, 113, 28.35 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
				},
				Components = {
					{
						Component = "photon_whe_edge_mass",
						Position = Vector( 0, -19, 66 ),
						Angles = Angle( -1, -90, 0 ),
						Scale = 0.94,
						SubMaterials = {
							[2] = "rin/msp/props/edge_msp"
						}
					},
				}
			},
			{
				Option = "1999",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 3 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "pillars", Value = 1 },
					{ BodyGroup = "rearfascia", Value = 0 },
				},
				Props = {
					{
						Model = "models/schmal/pushbar_cvpi96.mdl",
						Position = Vector( 0, 116, 16.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
					{
						Model = "models/gandhi/props/ts100.mdl",
						Position = Vector( 0, 113, 28.35 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/anemolis/props/gen_flashers/gen_flasher_1.mdl",
						Position = Vector( 9.5, 122, 21.3),
						Angles = Angle( 180, 0, 0 ),
						Scale = 0.8,
					},
					{
						Model = "models/anemolis/props/gen_flashers/gen_flasher_1.mdl",
						Position = Vector( -9.5, 122, 21.3),
						Angles = Angle( 180, 0, 0 ),
						Scale = 0.8,
					},
				},
				Components = {
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( -8.5, 121.2, 27.6 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_blue",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( 8.5, 121.2, 27.6 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.7,
						Phase = 180,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_blue",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_whe_edge_mass",
						Position = Vector( 0, -19, 66 ),
						Angles = Angle( -1, -90, 0 ),
						Scale = 0.94,
						SubMaterials = {
							[2] = "rin/msp/props/edge_msp"
						}
					},
				}
			},
			{
				Option = "2001",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
					{ BodyGroup = "pushbar", Value = 1 },
					{ BodyGroup = "pillars", Value = 1 },
					{ BodyGroup = "rearfascia", Value = 0 },
				},
				Components = {
					{
						Component = "photon_whe_edge_mass",
						Position = Vector( 0, -19, 66 ),
						Angles = Angle( -1, -90, 0 ),
						Scale = 0.94,
						SubMaterials = {
							[2] = "rin/msp/props/edge_msp"
						}
					},
				}
			},
			{
				Option = "2002",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
					{ BodyGroup = "pushbar", Value = 1 },
					{ BodyGroup = "pillars", Value = 1 },
					{ BodyGroup = "rearfascia", Value = 0 },
				},
				Components = {
					{
						Component = "photon_c3_mx7000_mass",
						Position = Vector( 0, -19, 66.7 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.005,
					},
				}
			},
		}
	},
	{
		Category = "Rain Guards",
		Options = {
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
			},
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
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
		Category = "Rear Deck",
		Options = {
			{
				Option = "Generic Strobe Lights",
				Components = {
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( -23, -76, 50 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_blue",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( -16.1, -76, 50 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.8,
						Phase = 180,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass",
						},
						States = {
							[1] = "R",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( 23, -76, 50 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.8,
						Phase = 180,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_blue",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( 16.1, -76, 50 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_amber",
						},
						States = {
							[1] = "A",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
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
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
                    { BodyGroup = "trunkemblem", Value = 0 },
					{ BodyGroup = "hubcaps", Value = 0 },
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
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( -35.4, -100, 43),
						Angles = Angle( -3.5, 0, 3.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -107, 48),
						Angles = Angle( 0, 0, 6.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( 0, -45, 67.35),
						Angles = Angle( 0, 0, 4.5 ),
						Scale = 1,
					},
				    {
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -124.55, 36.2 ),
						Angles = Angle( -11, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp_old",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
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