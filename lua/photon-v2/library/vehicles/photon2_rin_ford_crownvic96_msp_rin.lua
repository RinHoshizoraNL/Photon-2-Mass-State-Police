if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1996 Ford Crown Victoria MSP"
VEHICLE.Vehicle		= "96cvpi_sgm"
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
					{ Id = 6, Material = "rin/msp/crownvic96/patrol" }
				},
			},
			{
				Option = "Lake Rin Metropolitan Expressway Patrol",
				SubMaterials = {
					{ Id = 6, Material = "rin/msp/crownvic96/expressway" }
				},
			},
		}
	},
	{
		Category = "Lighting",
		Options = {
			{
				Option = "Default",
				Components = {
					{
						Component = "photon_standard_sgmcvpi96",
					}
				}
			}
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Vista Strobe",
				Components = {
					{
						Component = "photon_fedsig_vista_mass",
						Position = Vector( 0, -19.5, 72 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.003,
						BodyGroups = {
							["middle_part"] = 2,
						},
					},
				}
			},
			{
				Option = "Whelen Edge 9000",
				Components = {
					{
						Component = "photon_whe_edge_mass",
						Position = Vector( 0, -19, 67 ),
						Angles = Angle( -0.5, -90, 0 ),
						Scale = 1.003,
						SubMaterials = {
							[2] = "rin/msp/props/edge_msp"
						}
					},
				}
			},
			{
				Option = "Federal Signal Jetstream",
				Components = {
					{
						Component = "photon_fedsig_jetstream_mass",
						Position = Vector( 0, -18.5, 66 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.04,
						SubMaterials = {
							[3] = "rin/msp/props/jetstream",
						},
					},
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( -7, -22, 73.2 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.5,
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
						Position = Vector( 7, -22, 73.2 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.5,
						Phase = 180,
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
		Category = "Rear Deck",
		Options = {
			{
				Option = "Generic Strobe Lights",
				Components = {
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( -23, -80, 49.6 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_blue",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( -16.1, -80, 49.6 ),
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
						Position = Vector( 23, -80, 49.6 ),
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
						Position = Vector( 16.1, -80, 49.6 ),
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
		Category = "Pushbar Lights",
		Options = {
			{
				Option = "Top",
			    Props = {
					{
						Model = "models/anemolis/props/gen_flashers/gen_flasher_1.mdl",
						Position = Vector( 9, 126, 28.3),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_amber",
						},
					},
					{
						Model = "models/anemolis/props/gen_flashers/gen_flasher_1.mdl",
						Position = Vector( -9, 126, 28.3),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_amber",
						},
					},
				}
			},
			{
				Option = "Side",
			    Props = {
					{
						Model = "models/anemolis/props/gen_flashers/gen_flasher_1.mdl",
						Position = Vector( 19.4, 126, 24.5),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 0.5, 1, 1.3),
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_amber",
						},
					},
					{
						Model = "models/anemolis/props/gen_flashers/gen_flasher_1.mdl",
						Position = Vector( -19.4, 126, 24.5),
						Angles = Angle( 270, 0, 0 ),
						Scale = Vector( 0.5, 1, 1.3),
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_amber",
						},
					},
				}
			},
			{
				Option = "None",
			},
		}
	},
	{
		Category = "Spotlight",
		Options = {
			{
				Option = "Chrome",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -36, 28, 50 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				}
			},
			{
				Option = "Black",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -36, 28, 50 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "pillars", Value = 0 },
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 1 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
				},
				Props = {
					{
						Model = "models/schmal/pushbar_cvpi96.mdl",
						Position = Vector( 0, 120.5, 16.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
					{
						Model = "models/gandhi/props/ts100.mdl",
						Position = Vector( 0, 117, 28.35 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 59.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 1.5, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( -35.2, -105, 41.5),
						Angles = Angle( -3.5, 0, 5.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -40, 68.2),
						Angles = Angle( 0, 0, 4.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( 0, -107, 46.2),
						Angles = Angle( 0, 0, 5.5 ),
						Scale = 1,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 122, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.4, 31.8 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp_old",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp_old",
						},
					},
				}
			}
		}
	},
}
