-- ***************** "Essex class CVA-31 Bon Homme Richard" ******************************

--   Runways and landing strip for 'CVA-31'
-- You can get deck height from 3d software
-- you can use the carrier plugin in the modelviewer to help with the routes
GT.RunWays =
{     
-- landing strip definition (first in table)  
--	VppStartPoint; 		   azimuth (degree} 	  Length_Vpp; 	   Width_Vpp;
	{{-78.5916, 17.0026, -5.60511}, 349.0,		   97.0, 			   20.0,  --somewhere between last wire and model center / just past last wire

-- alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
	1, 			3.5, 		  		4.0, 					4.5, 			  4.5, 				5.0, 				5.5},

-- runways/Cats inbetween Hold back start and connect to front of ship not where the cat/start point connectors are
	{{49.0047,  16.9042,    7.8295}, 		000, 		    	  80.9248, 		    20.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},  --  Cat 1 location
	{{49.0047,  16.9042,    -10.4665}, 		000, 		    	  80.9248, 	        20.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},  --  Cat 2 location
	};

GT.RunWays.RunwaysNumber = #GT.RunWays

-- from landing to Parking 
--{{ X,  	    Z,		Y},		Speed},
GT.TaxiRoutes = 
	-- taxi routes and parking spots in LCS
	--    x				z          y			V_target
{
	{
		{{ -19.574, 16.9042, 23.233 }, 3.0},
		{{  21.142, 16.9042, 11.603 }, 1.0, 1.0 * 60.0}
	},

	{ -- 1 parking spot
		--{{ 5.0,  	    16.9042,		-9.0},		3.0}, -- Landing location
		{{ 18.163,	    16.9042,	 -12.604},		5.0}, -- WP1
		{{ 53.028,	    16.9042,		3.06},		5.0}, -- WP2
		{{ 103.983,	    16.9042,	   4.318},		2.0}, -- WP 4
		{{ 108.0,	    16.9042,		 7.0},		2.0,	1.0*60.0} -- Park . 1.0*60 = time for pilot to despawn 60 seconds, this is an option
	},
	{ -- 2 parking spot 
		{{5.0,      	16.9042,		-9.0},	    3.0},
		{{ 18.163,	    16.9042,	 -12.604},		5.0},
		{{ 53.028,	    16.9042,	    3.06},		5.0},
		{{ 79.691,	    16.9042,	   2.247},		2.0},
		{{ 91.334,	    16.9042,	   3.318},		2.0},
		{{ 95.461,	    16.9042,	    7.58},		2.0,	1.0*60.0}
	},
	{ -- 3 parking spot
		{{ 5.0,  	    16.9042,		-9.0},		3.0},
		{{ 45.845,	    16.9042,	  -1.042},		5.0},
	    {{ 68.384,	    16.9042,		3.075},		5.0},
		{{ 80.17,	    16.9042,		3.546},		2.0},
		{{ 83.747,	    16.9042,		8.748},		2.0,	1.0*60.0}
	},
	{ -- 4 parking spot
		{{ 5.0,  	    16.9042,		-9.0},		3.0},
		{{ 18.163,	    16.9042,	 -12.604},		5.0},
	    {{ 48.392,	    16.9042,		-3.07},		5.0},
		{{ 60.524,	    16.9042,		0.161},		2.0},
		{{ 69.388,	    16.9042,		4.769},		2.0},
		{{ 73.796,	    16.9042,		9.939},		2.0,	1.0*60.0}
	},	
	{ -- 5 parking spot	
	    {{ 5.0,  	    16.9042,		-9.0},		3.0},
		{{ 18.163,	    16.9042,	   -12.604},	5.0},
		{{ 38.994,	    16.9042,		-7.656},	5.0},
	    {{ 58.181,	    16.9042,	     4.276},	2.0},
		{{ 61.021,	    16.9042,		 8.748},	2.0,	1.0*60.0}
	},
	{ -- 6 parking spot	
	    {{ 5.0,  	    16.9042,		-9.0},		3.0},
		{{ 18.163,	    16.9042,	   -12.604},	5.0},
		{{ 28.378,	    16.9042,		-10.97},	5.0},
	    {{ 36.906,	    16.9042,	     1.665},	2.0},
		{{ 45.2,	    16.9042,		 8.357},	2.0},
		{{ 49.895,	    16.9042,		11.796},	2.0,	1.0*60.0}
	},
	{ -- 7 parking spot	
	    {{ 5.0,  	    16.9042,		-9.0},		3.0},
		{{ 18.163,	    16.9042,	    -13.86},	5.0},
		{{ 31.686,	    16.9042,		-3.617},	5.0},
	    {{ 35.196,	    16.9042,	     4.665},	2.0},
		{{ 38.768,	    16.9042,	    14.898},	2.0,	1.0*60.0}
	},
	{ -- 8 parking spot	
	    {{ 5.0,  	    16.9042,		-9.0},		3.0},
		{{ 18.163,	    16.9042,	   -12.604},	5.0},
		{{ 25.026,	    16.9042,		-13.86},	5.0},
	    {{ 31.52,	    16.9042,	   -20.589},	2.0},
		{{ 35.794,	    16.9042,		 -21.0},	2.0,	1.0*60.0}
		--{{ 35.794,	    16.9042,		 -18.0},	2.0}
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
		{ -- 1 spawn 
			{{44.0,	      16.9042,       7.8295},       2.0}, --Spawn Location   
			{{50.0,	      16.9042,       7.8295},       2.0}, --Facing location
			{{49.07,      16.9042,       7.8295},       1.0}  --behind holdback start
		}
	},
	{ RunwayIdx = 2, Points =
		{ -- 2 spawn 
 			{{44.0,       16.9042,    -13.606},       2.0}, 
 			{{50.0047,    16.9042,    -13.606},       2.0},
 			{{49.0047,    16.9042,    -13.606},       1.0} -- Hold back start
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
        {{ 99.507,   16.9042,     0.0}, 	0.0}			
		}
	},
	{ TerminalIdx = 2, Points =
		{ -- 2 spawn spot
        {{ 79.196,    16.9042,    0.0},   0.0}			
		}
	},
	{ TerminalIdx = 3, Points =
		{ -- 3 spawn spot
        {{ 57.566,    16.9042,     0.0},   0.0}
		}
	},	
	{ TerminalIdx = 4, Points =
		{ -- 4 spawn spot
        {{28.162,    16.9042,   -9.870},  0.0}
		}
	},	
	{ TerminalIdx = 5, Points =
		{ -- 5 spawn spot
        {{4.672,     16.9042,   -7.974},  0.0}
		}
	},
	{ TerminalIdx = 6, Points =
		{ -- 6 spawn spot
        {{-19.451,    16.9042,   -4.939}, 270}
		}
	},
	{ TerminalIdx = 7, Points =
		{ -- 7 spawn spot
        {{-79.846,    16.9042,   6.21}, 0.0}
		}
	},
	{ TerminalIdx = 8, Points =
		{ -- 8 spawn spot
        {{-98.171,    16.9042,   -7.246},   0.0}
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