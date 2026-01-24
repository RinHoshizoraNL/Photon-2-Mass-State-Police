if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Chevrolet Caprice MSP"
VEHICLE.Vehicle		= "95caprice_sgm"
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
					{ Id = 22, Material = "rin/msp/caprice95/patrol" },
					{ Id = 20, Material = "rin/msp/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/msp/caprice95/dash_blue" }
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Jetstream",
				Components = {
					{
						Component = "photon_fedsig_jetstream_mass",
						Position = Vector( 0, -20, 58 ),
						Angles = Angle( 0, 180, 1 ),
						Scale = 1.04,
						SubMaterials = {
							[3] = "rin/msp/props/jetstream",
						},
					},
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( -7, -23, 65.2 ),
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
						Position = Vector( 7, -23, 65.2 ),
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
			{
				Option = "Whelen Edge 9000",
				Components = {
					{
						Component = "photon_whe_edge_mass",
						Position = Vector( 0, -20, 59 ),
						Angles = Angle( -0.5, -90, 0 ),
						Scale = 1.013,
						SubMaterials = {
							[2] = "rin/msp/props/edge_msp"
						}
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
						Position = Vector( -23, -80, 43 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_blue",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_generic_flasher_mass",
						Position = Vector( -16.1, -80, 43 ),
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
						Position = Vector( 23, -80, 43 ),
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
						Position = Vector( 16.1, -80, 43 ),
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -37.5, 30, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				}
			},
		}
	},
	{
		Category = "Push Bar",
		Options = {
			{
				Option = "Push Bar",
				Props = {
					{
						Model = "models/schmal/pushbar_cvpi96.mdl",
						Position = Vector( 0, 113, 10 ),
						Angles = Angle(),
						Scale = 1
					},
					{
						Model = "models/gandhi/props/ts100.mdl",
						Position = Vector( 0, 109, 21.65 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
				},
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 0, -105, 38),
						Angles = Angle( 0, 0, 6 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -40, 59.7),
						Angles = Angle( 0, 0, 4 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( -36, -100, 38),
						Angles = Angle( 0, 0, 4 ),
						Scale = 1,
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 51),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp_old",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
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
