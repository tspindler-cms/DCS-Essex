-- ***************** "Essex class CVA-31 Bon Homme Richard" ******************************

--   Runways and landing strip for 'CVA-31'
-- You can get deck height from 3d software
-- you can use the carrier plugin in the modelviewer to help with the routes
GT.RunWays =
{     
-- landing strip definition (first in table)  
--	VppStartPoint; 		   azimuth (degree} 	  Length_Vpp; 	   Width_Vpp;
	{{-78.5916, 16.9026, -5.60511}, 349.0,		   97.0, 			   20.0,  --somewhere between last wire and model center / just past last wire

-- alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
	1, 			3.5, 		  		4.0, 					4.5, 			  4.5, 				5.0, 				5.5},

-- runways/Cats inbetween Hold back start and connect to front of ship not where the cat/start point connectors are
	{{51.5047,  16.90,    9.331755}, 		000, 		    	  76.9248, 		    20.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},  --  Cat 1 location
	{{51.6597,  16.90,  -12.076300}, 		003, 		    	  76.9248, 	        20.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},  --  Cat 2 location
	};

GT.RunWays.RunwaysNumber = #GT.RunWays

-- from landing to Parking 
GT.TaxiRoutes = 
{
	{ -- 1 parking spot
		--{{ 5.0,  	    16.90,		-9.0},		3.0}, -- Landing location
		{{ -19.574, 16.90, 23.233 }, 3.0},
		{{ -28.441, 16.90, -8 },		2.0}, -- WP 4
		{{ -28.481, 16.90, 3 },		2.0,	1.0*60.0} -- Park . 1.0*60 = time for pilot to despawn 60 seconds, this is an option
	},
	{ -- 2 parking spot 
		{{ -19.574, 16.90, 23.233 }, 3.0},
		{{ -15.209, 16.90, -8 },		2.0},
		{{ -15.209, 16.90, 3 },		2.0,	1.0*60.0}
	},
	{ -- 3 parking spot
		{{ -19.574, 16.90, 23.233 }, 3.0},
		{{ -1.7325, 16.90, -8 },		2.0},
		{{ -1.7325, 16.90, 3 },		2.0,	1.0*60.0}
	},
	{ -- 4 parking spot
		{{ -19.574, 16.90, 23.233 }, 3.0},
		{{ 12.112, 16.90, -8 },		2.0},
		{{ 12.112, 16.90, 3 },		2.0,	1.0*60.0}
	},
	{ -- 5 parking spot
		{{ -19.574, 16.90, 23.233 }, 3.0},
		{{ 26.101, 16.90, -8.00 }, 2.0}, -- WP1
		{{ 26.101, 16.90, 3 }, 1.0, 1.0 * 60.0}
	}
}

GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

-- Spawn to take off 
GT.TaxiForTORoutes = 
	-- taxi routes and parking spots in CVA-31
	--    L/R         U/D       F/B
	--    x				z        y		V_target
{		
 	{ RunwayIdx = 1, Points =
		{ -- 5 spawn 
			{{-10.00, 16.90, -10.00},       2.0}, --Spawn Location   
			{{14.101, 16.90, -10.00},       2.0},
			{{35.0,	      16.90,       4.331755},       2.0},
			{{48.0,	      16.90,       9.331755},       2.0},
			{{51.0,	      16.90,       9.331755},       1.0}, --Facing location
			{{52.0,       16.90,       9.331755},       1.0}  --behind holdback start
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 6 spawn 
 			{{-12.00, 16.90, -24.00},       2.0}, 
			{{12.112, 16.90, -24.00},       2.0}, 
			{{30.0,       16.90,    -12.076},       2.0}, 
 			{{50.0,       16.90,    -12.076},       2.0},
			{{51.5,       16.90,    -11.833},       1.0},
 			{{52.15,      16.90,    -11.833},       1.0} -- Hold back start
		}
	},
	{ RunwayIdx = 1, Points =
		{ -- 7 spawn 
			{{-35.00, 16.90, -8.00} , 2.0}, --Spawn Location   
			{{-10.00, 16.90, -10.00},       2.0},
			{{14.101, 16.90, -10.00},       2.0},
			{{35.0,	      16.90,       4.331755},       2.0},
			{{48.0,	      16.90,       9.331755},       2.0}, --Facing location
			{{51.0,	      16.90,       9.331755},       1.0}, --Facing location
			{{52.0,       16.90,       9.331755},       1.0}  --behind holdback start
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 8 spawn 
			{{-38.00, 16.90, -20.00}, 2.0}, -- Spawn Location
 			{{-12.00, 16.90, -24.00},       2.0}, 
			{{12.112, 16.90, -24.00},       2.0}, 
			{{30.0,       16.90,    -12.076},       2.0}, 
 			{{50.0,       16.90,    -12.076},       2.0},
			{{51.5,       16.90,    -11.833},       1.0},
 			{{52.15,      16.90,    -11.833},       1.0} -- Hold back start
		}
	},
	{ RunwayIdx = 1, Points =
		{ -- 1 spawn 
			{{35.0,	      16.90,       4.331755},       2.0}, --Spawn Location   
			{{48.0,	      16.90,       9.331755},       2.0},
			{{51.0,	      16.90,       9.331755},       1.0}, --Facing location
			{{52.0,       16.90,       9.331755},       1.0}  --behind holdback start
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 2 spawn 
 			{{34.0,       16.90,    -12.076},       2.0}, 
 			{{48.5,       16.90,    -12.076},       2.0},
			{{51.5,       16.90,    -12.076},       1.0},
 			{{52.15,      16.90,    -12.076300},       1.0} -- Hold back start
		}
	},
	{ RunwayIdx = 1, Points =
		{ -- 3 spawn 
			{{14.101, 16.90, -10.00},       2.0}, --Spawn Location   
			{{35.0,	      16.90,       4.331755},       2.0}, --Spawn Location   
			{{48.0,	      16.90,       9.331755},       2.0},
			{{51.0,	      16.90,       9.331755},       1.0}, --Facing location
			{{52.0,       16.90,       9.331755},       1.0}  --behind holdback start
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 4 spawn 
 			{{12.112, 16.90, -24.00},       2.0}, 
			{{30.0,       16.90,    -12.076},       2.0}, 
 			{{50.0,       16.90,    -12.076},       2.0},
			{{51.5,       16.90,    -11.833},       1.0},
 			{{52.15,      16.90,    -11.833},       1.0} -- Hold back start
		}
	},
}
GT.TaxiForTORoutes.RoutesForTONumber = #GT.TaxiForTORoutes

--Helicopter Spawns
GT.HelicopterSpawnTerminal = 
	-- taxi routes and parking spots in LCS
	--    x				y        z			direction
{		
	{ TerminalIdx = 1, Points =
		{ -- 1 spawn spot
        {{ -122.41, 16.90, -12.279}, 	0.0}			
		}
	},
	{ TerminalIdx = 2, Points =
		{ -- 2 spawn spot
        {{ -53.44, 16.90, 11.285},   0.0}			
		}
	},
	{ TerminalIdx = 3, Points =
		{ -- 3 spawn spot
        {{ -32.204, 16.90, 12.94},   0.0}
		}
	},	
}
GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal


GT.ArrestingGears =
{
	--[[
	--[example]
	{
		-- coordinates for spools (Left and Right) in LCS:
		-- if connector exists write connector name
		-- else write position coordinates manually  -- [pos] omitted when [connector_name] exists
		Left =	{ connector_name = '',	pos = {xl,yl,zl} },
		Right =	{ connector_name = '',	pos = {xr,yr,zr} }
	},
	--]]
	{
		Left = {	connector_name = 'POINT_TROS_01_01' },
		Right = {	connector_name = 'POINT_TROS_01_02' }
	},
	{
		Left = {	connector_name = 'POINT_TROS_02_01' },
		Right = {	connector_name = 'POINT_TROS_02_02' }
	},
	{
		Left = {	connector_name = 'POINT_TROS_03_01' },
		Right = {	connector_name = 'POINT_TROS_03_02' }
	},
	{
		Left = {	connector_name = 'POINT_TROS_04_01' },
		Right = {	connector_name = 'POINT_TROS_04_02' }
	},
}
GT.ArrestingGears.ArrestingGearsNumber = #GT.ArrestingGears



GT.Elevators = 
-- ElevatorTypes :	SPAWN	= 0, DESPAWN = 1, BOTH	= 2
-- elevator routes and parking spots in LCS
	--    x				z        y			V_target
{		
--[[ 
	{ 	ElevatorIdx = 1, ElevatorType = 2, TerminalIdx = 1,	Points =
		{ 
			{{ 35.794,	5.164,	  -21.0}, 	1.0},
			{{ 35.784,	5.164,	  1.119}, 	1.0},
			{{ 3.69,	5.164,	  1.119}, 	1.0}
		}
	},
	{
		ElevatorIdx = 2, ElevatorType = 1, TerminalIdx = 2,	Points =
		{ 
			{{-59.722,	5.164,	  0.0},   	1.0},
			{{-36.13,	5.164,	  0.0}, 	1.0}
		}
	},	
	 ]]
}
GT.Elevators.ElevatorsNumber = #GT.Elevators	