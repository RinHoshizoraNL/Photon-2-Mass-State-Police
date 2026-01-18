if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2006 Dodge Charger MSP Slicktop"
VEHICLE.Vehicle		= "06charger_sgm"
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
					{ Id = 3, Material = "rin/msp/charger06/patrol" }
				},
			},
		}
	},
	{
		Category = "Front Window",
		Options = {
			{
				Option = "Front Window",
				Components = {
					{
						Component = "photon_whe_ion_spitfire_mass",
						Position = Vector( 14, 27, 61 ),
						Angles = Angle( 2, 0, 0 ),
						Scale = 1,
                        Phase = 180,
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Component = "photon_whe_ion_spitfire_mass",
						Position = Vector( 21, 27, 60.8 ),
						Angles = Angle( 2, 0, 0 ),
						Scale = 1,
                        RenderGroup = RENDERGROUP_OPAQUE,
                    },
				},
			},
		}
	},
	{
		Category = "Mirrors",
		Options = {
			{
				Option = "Mirrors",
				Components = {
					{
						Component = "photon_whe_ion_surface_mass",
						Position = Vector( -45.8, 31.7, 50.5 ),
						Angles = Angle( 0, 34, -2 ),
						Scale = 0.7,
					},
                    {
						Component = "photon_whe_ion_surface_mass",
						Position = Vector( 45.8, 31.7, 50.5 ),
						Angles = Angle( 0, -34, -2 ),
						Scale = 0.7,
                        Phase = 180,
					},
				},
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
						Component = "photon_whe_ion_surface_bracket_mass",
						Position = Vector( -10, 125.5, 26 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        Phase = 180,
                    },
                    {
						Component = "photon_whe_ion_surface_bracket_mass",
						Position = Vector( 10, 125.5, 26 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                    },
				},
			},
		}
	},
	{
		Category = "Rear Deck",
		Options = {
			{
				Option = "Dual Dominators",
				Components = {
					{
						Component = "photon_whe_dominator2_mass",
						Position = Vector( -17, -78, 55 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_whe_dominator2_mass",
						Position = Vector( 17, -78, 55 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.1,
						States = {
							[1] = "A",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
			},
			{
				Option = "Triple Dominators",
				Components = {
					{
						Component = "photon_whe_dominator2_mass",
						Position = Vector( -17, -78, 55 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.1,
						States = {
							[1] = "B",
							[1] = "B",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_whe_dominator2_mass",
						Position = Vector( 17, -78, 55 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.1,
						States = {
							[1] = "B",
							[1] = "B",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Component = "photon_whe_dominator2_mass",
						Position = Vector( 0, -78, 55 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 1.1,
						States = {
							[2] = "R",
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
						Position = Vector( -36, 35, 52 ),
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
					{ BodyGroup = "wheels_front", Value = 1 },
					{ BodyGroup = "wheels_rear", Value = 1 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 17, 40 ),
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
						Model = "models/supermighty/setina/setina_impala_pushbar.mdl",
						Position = Vector( 0, 123.5, 20.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 1.1, 1.1 ),
					},
                    {
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 8.5, 27.9, 60.1 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 4, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 1.5, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 0, -103, 48.5),
						Angles = Angle( 0, 0, 5.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( -25, -103, 50),
						Angles = Angle( -5, 0, 6.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( 25, -103, 50.2),
						Angles = Angle( 5, 0, 6.5 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -40, 68.8),
						Angles = Angle( -5, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.7, 25.3 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/msp/props/plate_msp_old",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 124.3, 17.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 125, 17.3 ),
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