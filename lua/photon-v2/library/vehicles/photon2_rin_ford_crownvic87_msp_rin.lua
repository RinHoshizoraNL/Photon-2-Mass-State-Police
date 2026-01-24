if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Ford Crown Victoria MSP"
VEHICLE.Vehicle		= "87ltd_sgm"
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
					{ Id = 2, Material = "rin/msp/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/msp/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/msp/crownvic87/dash_blue" },
					{ Id = 7, Material = "rin/msp/crownvic87/patrol" },
					{ Id = 15, Material = "rin/msp/props/blue" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Whelen Edge 9000",
				Components = {
					{
						Component = "photon_whe_edge_mass",
						Position = Vector( 0, -16, 59.5 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[2] = "rin/msp/props/edge_msp"
						},
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelenadvantedge.mdl",
						Position = Vector( 0, -16, 59.5 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[0] = "photon/common/blank",
							[2] = "photon/common/blank",
							[3] = "photon/common/blank",
							[4] = "photon/common/blank",
							[5] = "photon/common/blank",
						},
						BodyGroups = {
							["Speaker"] = 1,
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
				Option = "Whelen 500",
				Components = {
					{
						Component = "photon_whe_500_mass",
						Position = Vector( 0, -67, 43 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_koito_flasher_mass",
						Position = Vector( -14, -65, 48.9 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
						BodyGroups = {
							["mount"] = 1,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_koito_flasher_mass",
						Position = Vector( 14, -65, 48.9 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
						BodyGroups = {
							["mount"] = 1,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
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
						Position = Vector( -38, 25, 42 ),
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
						Position = Vector( -38, 25, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
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
						Position = Vector( 0, 113, 14 ),
						Angles = Angle(),
						Scale = 1
					},
					{
						Model = "models/anemolis/props/gen_flashers/gen_flasher_1.mdl",
						Position = Vector( 9, 118.5, 25.55),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_amber",
						},
					},
					{
						Model = "models/anemolis/props/gen_flashers/gen_flasher_1.mdl",
						Position = Vector( -9, 118.5, 25.55),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "sentry/props/koitoflasher/glass_amber",
						},
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
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -20.8, -67, 40),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 20.8, -67, 40),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( -39.8, -100, 35.5),
						Angles = Angle( 0, 0, 4 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( 0, -105, 39.7),
						Angles = Angle( 0, 0, 6 ),
						Scale = 1,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -34, 111.2, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123, 30 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp_old",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -34, 112, 16.8 ),
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
