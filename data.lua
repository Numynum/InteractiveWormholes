local _, addon = ...
local L = addon.L

local FACTION = UnitFactionGroup('player')

local data = {}
--[[ data structure:

required:
- mapID
- x
- y

optional:
- atlas
- atlasSize
- highlightAtlas
- highlightAdd (uses 'ADD' blending mode instead of 'BLEND')
- tooltip (custom tooltip text)
- tooltipMap (uses map name by mapID)
- tooltipQuest (uses quest name by questID)
- isTaxi (will use a pre-defined atlas, and render lines between pin and source)
- taxiIndex (used to define order of taxi routes for lines)
- taxiSourceIndex (index of the source pin instead of defaulting to the player)
- isQuest (will use a pre-defined atlas)
- parent (used to reference parent data object, will be selected before the child, see special.children)
- displayExtra (exactly the same as all of the above, sans parent, for displaying the option on additional maps/locations)

special:
- children (exclusive with everything else, will iterate through objects in the data structure instead of itself)

--]]

-- Wormhole Generator: Northrend
data[38054] = { -- Borean Tundra
	mapID = 114,
	x = 0.5178,
	y = 0.4503,
}
data[38055] = { -- Howling Fjord
	mapID = 117,
	x = 0.5853,
	y = 0.4863,
}
data[38056] = { -- Sholozar Basin
	mapID = 119,
	x = 0.4921,
	y = 0.3962,
}
data[38057] = { -- Icecrown
	mapID = 118,
	x = 0.6287,
	y = 0.2692,
}
data[38058] = { -- Storm Peaks
	mapID = 120,
	x = 0.4390,
	y = 0.2580,
}
data[38059] = { -- Underground...
	mapID = 125, -- Dalaran, Crystalsong Forest
	x = 0.4786,
	y = 0.3239,
	atlas = 'VignetteLootElite',
	highlightAdd = true,
}

-- Reaves (with Wormhole Generator module)
data[46325] = { -- Azsuna
	mapID = 630,
	x = 0.47,
	y = 0.49,
}
data[46326] = { -- Val'sharah
	mapID = 641,
	x = 0.56,
	y = 0.66,
}
data[46327] = { -- Highmountain
	mapID = 650,
	x = 0.45,
	y = 0.56,
}
data[46328] = { -- Stormheim
	mapID = 634,
	x = 0.53,
	y = 0.53,
}
data[46329] = { -- Suramar
	mapID = 680,
	x = 0.42,
	y = 0.67,
}

-- Wormhole Centrifuge (Draenor)
data[42586] = { -- "A jagged landscape"
	mapID = 542, -- Spires of Arak, Draenor
	x = 0.52,
	y = 0.33,
	tooltipMap = 542,
}
data[42587] = { -- "A reddish-orange forest"
	mapID = 535, -- Talador, Draenor
	x = 0.58,
	y = 0.65,
	tooltipMap = 535,
}
data[42588] = { -- "Shadows..."
	mapID = 539, -- Shadowmoon Valley, Draenor
	x = 0.49,
	y = 0.52,
	tooltipMap = 539,
}
data[42589] = { -- "Grassy plains"
	mapID = 552, -- Nagrand, Draenor
	x = 0.73,
	y = 0.54,
	tooltipMap = 552,
}
data[42590] = { -- "Primal forest"
	mapID = 543, -- Gorgrond, Draenor
	x = 0.53,
	y = 0.61,
	tooltipMap = 543,
}
data[42591] = { -- "Lava and snow"
	mapID = 525, -- Frostfire Ridge, Draenor
	x = 0.59,
	y = 0.49,
	tooltipMap = 525,
}

-- Wormhole Generator: Shadowlands
data[51934] = { -- Oribos, The Eternal City
	mapID = 1670,
	x = 0.5208,
	y = 0.2613,
	tooltipMap = 1670,
}
data[51935] = { -- Bastion, Home of the Kyrian
	mapID = 1533,
	x = 0.5185,
	y = 0.8776,
	tooltipMap = 1533,
}
data[51936] = { -- Maldraxxus, Citadel of the Necrolords
	mapID = 1536,
	x = 0.4244,
	y = 0.4399,
	tooltipMap = 1536,
}
data[51937] = { -- Ardenweald, Forest of the Night Fae
	mapID = 1565,
	x = 0.5442,
	y = 0.6032,
	tooltipMap = 1565,
}
data[51938] = { -- Revendreth, Court of the Venthyr
	mapID = 1525,
	x = 0.3750,
	y = 0.7655,
	tooltipMap = 1525,
}
data[51939] = { -- The Maw, Wasteland of the Damned
	mapID = 1543,
	x = 0.2245,
	y = 0.2815,
	tooltipMap = 1543,
}
data[51941] = { -- Korthia, City of Secrets
	mapID = 1961,
	x = 0.6240,
	y = 0.2458,
	tooltipMap = 1961,
}
data[51942] = { -- Zereth Mortis, Enlightened Haven
	mapID = 1970,
	x = 0.4552,
	y = 0.5528,
	tooltipMap = 1970,
	displayExtra = {
		{
			-- HBD doesn't translate from ZM to Shadowlands, so we'll have to do it manually
			mapID = 1550, -- Shadowlands
			x = 0.8565,
			y = 0.8016,
			tooltipMap = 1970,
		}
	}
}

-- Azshara Rocketway
data[39596] = { -- Orgrimmar Rocketway Exchange
	mapID = 76, -- Azshara
	x = 0.2950,
	y = 0.6595,
	tooltip = L['Orgrimmar Rocketway Exchange'],
	isTaxi = true,
	taxiIndex = 4,
	taxiSourceIndex = 5, -- Southern Rocketway Terminus
}
data[39597] = { -- Gallywix Rocketway Exchange
	mapID = 76, -- Azshara
	x = 0.2579,
	y = 0.4962,
	tooltip = L['Gallywix Rocketway Exchange'],
	isTaxi = true,
	taxiIndex = 3,
	taxiSourceIndex = 5, -- Southern Rocketway Terminus
}
data[39598] = { -- Northern Rocketway Exchange
	mapID = 76, -- Azshara
	x = 0.4248,
	y = 0.2478,
	tooltip = L['Northern Rocketway Exchange'],
	isTaxi = true,
	taxiIndex = 2,
	taxiSourceIndex = 5, -- Southern Rocketway Terminus
}
data[39599] = { -- Northern Rocketway Terminus
	mapID = 76, -- Azshara
	x = 0.6638,
	y = 0.2082,
	tooltip = L['Northern Rocketway Terminus'],
	isTaxi = true,
	taxiIndex = 1,
	taxiSourceIndex = 5, -- Southern Rocketway Terminus
}
data[39570] = { -- Southern Rocketway Terminus
	mapID = 76, -- Azshara
	x = 0.5078,
	y = 0.7403,
	tooltip = L['Southern Rocketway Terminus'],
	isTaxi = true,
	taxiIndex = 5,
	taxiSourceIndex = 4, -- Orgrimmar Rocketway Exchange
}
data[39571] = { -- Gallywix Rocketway Exchange
	mapID = data[39597].mapID,
	x = data[39597].x,
	y = data[39597].y,
	tooltip = data[39597].tooltip,
	isTaxi = true,
	taxiIndex = data[39597].taxiIndex,
	taxiSourceIndex = 4, -- Orgrimmar Rocketway Exchange
}
data[39572] = { -- Northern Rocketway Exchange
	mapID = data[39598].mapID,
	x = data[39598].x,
	y = data[39598].y,
	tooltip = data[39598].tooltip,
	isTaxi = true,
	taxiIndex = data[39598].taxiIndex,
	taxiSourceIndex = 4, -- Orgrimmar Rocketway Exchange
}
data[39573] = { -- Northern Rocketway Terminus
	mapID = data[39599].mapID,
	x = data[39599].x,
	y = data[39599].y,
	tooltip = data[39599].tooltip,
	isTaxi = true,
	taxiIndex = data[39599].taxiIndex,
	taxiSourceIndex = 4, -- Orgrimmar Rocketway Exchange
}
data[38780] = { -- Orgrimmar Rocketway Exchange
	mapID = data[39596].mapID,
	x = data[39596].x,
	y = data[39596].y,
	tooltip = data[39596].tooltip,
	isTaxi = true,
	taxiIndex = data[39596].taxiIndex,
	taxiSourceIndex = 3, -- Gallywix Rocketway Exchange
}
data[38781] = { -- Northern Rocketway Exchange
	mapID = data[39598].mapID,
	x = data[39598].x,
	y = data[39598].y,
	tooltip = data[39598].tooltip,
	isTaxi = true,
	taxiIndex = data[39598].taxiIndex,
	taxiSourceIndex = 3, -- Gallywix Rocketway Exchange
}
data[38782] = { -- Southern Rocketway Terminus
	mapID = data[39570].mapID,
	x = data[39570].x,
	y = data[39570].y,
	tooltip = data[39570].tooltip,
	isTaxi = true,
	taxiIndex = data[39570].taxiIndex,
	taxiSourceIndex = 3, -- Gallywix Rocketway Exchange
}
data[38783] = { -- Northern Rocketway Terminus
	mapID = data[39599].mapID,
	x = data[39599].x,
	y = data[39599].y,
	tooltip = data[39599].tooltip,
	isTaxi = true,
	taxiIndex = data[39599].taxiIndex,
	taxiSourceIndex = 3, -- Gallywix Rocketway Exchange
}
data[38784] = { -- Northern Rocketway Terminus
	mapID = data[39599].mapID,
	x = data[39599].x,
	y = data[39599].y,
	tooltip = data[39599].tooltip,
	isTaxi = true,
	taxiIndex = data[39599].taxiIndex,
	taxiSourceIndex = 2, -- Northern Rocketway Exchange
}
data[38785] = { -- Gallywix Rocketway Exchange
	mapID = data[39597].mapID,
	x = data[39597].x,
	y = data[39597].y,
	tooltip = data[39597].tooltip,
	isTaxi = true,
	taxiIndex = data[39597].taxiIndex,
	taxiSourceIndex = 2, -- Northern Rocketway Exchange
}
data[38786] = { -- Orgrimmar Rocketway Exchange
	mapID = data[39596].mapID,
	x = data[39596].x,
	y = data[39596].y,
	tooltip = data[39596].tooltip,
	isTaxi = true,
	taxiIndex = data[39596].taxiIndex,
	taxiSourceIndex = 2, -- Northern Rocketway Exchange
}
data[38787] = { -- Southern Rocketway Terminus
	mapID = data[39570].mapID,
	x = data[39570].x,
	y = data[39570].y,
	tooltip = data[39570].tooltip,
	isTaxi = true,
	taxiIndex = data[39570].taxiIndex,
	taxiSourceIndex = 2, -- Northern Rocketway Exchange
}
data[38815] = { -- Northern Rocketway Exchange
	mapID = data[39598].mapID,
	x = data[39598].x,
	y = data[39598].y,
	tooltip = data[39598].tooltip,
	isTaxi = true,
	taxiIndex = data[39598].taxiIndex,
	taxiSourceIndex = 1, -- Northern Rocketway Terminus
}
data[38816] = { -- Gallywix Rocketway Exchange
	mapID = data[39597].mapID,
	x = data[39597].x,
	y = data[39597].y,
	tooltip = data[39597].tooltip,
	isTaxi = true,
	taxiIndex = data[39597].taxiIndex,
	taxiSourceIndex = 1, -- Northern Rocketway Terminus
}
data[38817] = { -- Orgrimmar Rocketway Exchange
	mapID = data[39596].mapID,
	x = data[39596].x,
	y = data[39596].y,
	tooltip = data[39596].tooltip,
	isTaxi = true,
	taxiIndex = data[39596].taxiIndex,
	taxiSourceIndex = 1, -- Northern Rocketway Terminus
}
data[38818] = { -- Southern Rocketway Terminus
	mapID = data[39570].mapID,
	x = data[39570].x,
	y = data[39570].y,
	tooltip = data[39570].tooltip,
	isTaxi = true,
	taxiIndex = data[39570].taxiIndex,
	taxiSourceIndex = 1, -- Northern Rocketway Terminus
}

-- Vethir in Stormheim
data[45766] = { -- Galebroken Path
	mapID = 634, -- Stormheim
	x = 0.45,
	y = 0.77,
	isTaxi = true,
	tooltip = L['Galebroken Path'],
}
data[45767] = { -- Thorignir Refuge
	mapID = 634, -- Stormheim
	x = 0.43,
	y = 0.82,
	isTaxi = true,
	tooltip = L['Thorignir Refuge'],
}
data[45768] = { -- Thorim's Peak
	mapID = 634, -- Stormheim
	x = 0.41,
	y = 0.80,
	isTaxi = true,
	tooltip = L['Thorim\'s Peak'],
}
data[45769] = { -- Hrydshal (during active world quest)
	mapID = 634, -- Stormheim
	x = 0.43,
	y = 0.67,
	isQuest = true,
	tooltipQuest = 41451, -- "Assault on Hrydshal"
}

-- Stormflight (Warrior Order Hall)
data[44733] = { -- Dalaran
	mapID = 627,
	x = 0.7246,
	y = 0.4594,
	tooltipMap = 627,
}
data[44734] = { -- Stormheim
	mapID = 634,
	x = 0.6034,
	y = 0.5106,
	tooltipMap = 634,
}
data[44735] = { -- Azsuna
	mapID = 630,
	x = 0.4749,
	y = 0.2755,
	tooltipMap = 630,
}
data[44736] = { -- Val'sharah
	mapID = 641,
	x = 0.5462,
	y = 0.7313,
	tooltipMap = 641,
}
data[44737] = { -- Highmountain
	mapID = 750, -- Thunder Totem
	x = 0.3853,
	y = 0.4554,
	tooltipMap = 650, -- Highmountain
}
data[44738] = { -- Suramar
	mapID = 680,
	x = 0.3381,
	y = 0.4940,
	tooltipMap = 680,
}
data[44739] = { -- Broken Shore
	mapID = 646,
	x = 0.4427,
	y = 0.6299,
	tooltipMap = 646,
}
data[44742] = { -- Arms artifact quest
	mapID = 18, -- Tirisfal Glades, Eastern Kingdom
	x = 0.1764,
	y = 0.6752,
	isQuest = true,
	tooltipQuest = 41105, -- "The Sword of Kings"
}
data[44731] = { -- Fury artifact quest
	mapID = 634, -- Stormheim
	x = 0.6259,
	y = 0.4644,
	isQuest = true,
	tooltipQuest = 40043, -- "The Hunter of Heroes"
}
data[44732] = { -- campaign
	mapID = 120, -- Storm Peaks
	x = 0.4119,
	y = 0.1034,
	isQuest = true,
	tooltipQuest = 43090, -- "Ulduar's Oath"
}
data[44740] = { -- campaign
	mapID = 649, -- Helheim (in Stormheim)
	x = 0.3544,
	y = 0.3067,
	isQuest = true,
	tooltipQuest = 44849, -- "Recruitment Drive"
	displayExtra = {
		{
			-- HBD doesn't translate from Helheim to Stormheim, so we'll have to do it manually
			mapID = 634, -- Stormheim
			x = 0.7298,
			y = 0.4096,
			isQuest = true,
			tooltipQuest = 44849,
		}
	}
}
data[44741] = { -- campaign
	mapID = 646, -- Broken Shore
	x = 0.6963,
	y = 0.3558,
	isQuest = true,
	tooltipQuest = 44889, -- "Resource Management"
}

-- Underbelly Portal network
data[45922] = { -- Sewer Guard Station, from Inn Entrance
	mapID = 628, -- Underbelly, Dalaran, Broken Isles
	x = 0.6850,
	y = 0.5708,
}
data[45916] = data[45922] -- Sewer Guard Station, from Black Market
data[45928] = data[45922] -- Sewer Guard Station, from Alchemists' Lair
data[45934] = data[45922] -- Sewer Guard Station, from Abandoned Shack
data[45940] = data[45922] -- Sewer Guard Station, from Rear Entrance
data[45923] = { -- Black Market, from Inn Entrance
	mapID = 628, -- Underbelly, Dalaran, Broken Isles
	x = 0.6998,
	y = 0.1665,
}
data[45911] = data[45923] -- Black Market, from Sewer Guard Station
data[45929] = data[45923] -- Black Market, from Alchemists' Lair
data[45935] = data[45923] -- Black Market, from Abandoned Shack
data[45941] = data[45923] -- Black Market, from Rear Entrance
data[45912] = { -- Inn Entrance, from Sewer Guard Station
	mapID = 628, -- Underbelly, Dalaran, Broken Isles
	x = 0.6735,
	y = 0.6910,
}
data[45918] = data[45924] -- Inn Entrance, from Black Market
data[45930] = data[45924] -- Inn Entrance, from Alchemists' Lair
data[45936] = data[45924] -- Inn Entrance, from Abandoned Shack
data[45942] = data[45924] -- Inn Entrance, from Rear Entrance
data[45925] = { -- Alchemists' Lair, from Inn Entrance
	mapID = 628, -- Underbelly, Dalaran, Broken Isles
	x = 0.7812,
	y = 0.7958,
}
data[45913] = data[45925] -- Alchemists' Lair, from Sewer Guard Station
data[45919] = data[45925] -- Alchemists' Lair, from Black Market
data[45937] = data[45925] -- Alchemists' Lair, from Abandoned Shack
data[45943] = data[45925] -- Alchemists' Lair, from Rear Entrance
data[45926] = { -- Abandoned Shack, from Inn Entrance
	mapID = 628, -- Underbelly, Dalaran, Broken Isles
	x = 0.4255,
	y = 0.5165,
}
data[45914] = data[45926] -- Abandoned Shack, from Sewer Guard Station
data[45920] = data[45926] -- Abandoned Shack, from Black Market
data[45932] = data[45926] -- Abandoned Shack, from Alchemists' Lair
data[45944] = data[45926] -- Abandoned Shack, from Rear Entrance
data[45927] = { -- Rear Entrance, from Inn Entrance
	mapID = 628, -- Underbelly, Dalaran, Broken Isles
	x = 0.3065,
	y = 0.4672,
}
data[45915] = data[45927] -- Rear Entrance, from Sewer Guard Station
data[45921] = data[45927] -- Rear Entrance, from Black Market
data[45933] = data[45927] -- Rear Entrance, from Alchemists' Lair
data[45939] = data[45927] -- Rear Entrance, from Abandoned Shack

-- Warfront Footholds (Horde)
data[48348] = { -- Drustvar
	mapID = 896,
	x = 0.2061,
	y = 0.4569,
	atlas = 'bfa-landingbutton-horde-up',
	atlasSize = 40,
	highlightAtlas = 'bfa-landingbutton-horde-diamondhighlight',
	highlightAdd = true,
}
data[48349] = { -- Stormsong Valley
	mapID = 942,
	x = 0.5198,
	y = 0.2449,
	atlas = 'bfa-landingbutton-horde-up',
	atlasSize = 40,
	highlightAtlas = 'bfa-landingbutton-horde-diamondhighlight',
	highlightAdd = true,
}
data[48350] = { -- Tiragarde Sound
	mapID = 895,
	x = 0.8820,
	y = 0.5116,
	atlas = 'bfa-landingbutton-horde-up',
	atlasSize = 40,
	highlightAtlas = 'bfa-landingbutton-horde-diamondhighlight',
	highlightAdd = true,
}
-- TODO: horde foothold campaign quests

-- Warfront Footholds (Alliance)
data[48171] = { -- Zuldazar
	mapID = 862,
	x = 0.4068,
	y = 0.7085,
	atlas = 'bfa-landingbutton-alliance-up',
	atlasSize = 40,
	highlightAtlas = 'bfa-landingbutton-alliance-shieldhighlight',
	highlightAdd = true,
	tooltipMap = 862,
}
data[48170] = { -- Nazmir
	mapID = 863,
	x = 0.6196,
	y = 0.4020,
	atlas = 'bfa-landingbutton-alliance-up',
	atlasSize = 40,
	highlightAtlas = 'bfa-landingbutton-alliance-shieldhighlight',
	highlightAdd = true,
	tooltipMap = 863,
}
data[48169] = { -- Vol'dun
	mapID = 864,
	x = 0.3560,
	y = 0.3317,
	atlas = 'bfa-landingbutton-alliance-up',
	atlasSize = 40,
	highlightAtlas = 'bfa-landingbutton-alliance-shieldhighlight',
	highlightAdd = true,
	tooltipMap = 864,
}
data[48168] = { -- Zuldazar foothold campaign quest
	mapID = 862,
	x = 0.8022,
	y = 0.5523,
	isQuest = true,
	tooltipQuest = 51308, -- "Zuldazar Foothold"
}
data[48164] = { -- Nazmir foothold campaign quest
	mapID = 863,
	x = 0.5372,
	y = 0.3421,
	isQuest = true,
	tooltipQuest = 51088, -- "Heart of Darkness"
}
data[48162] = { -- Vol'dun foothold campaign quest
	mapID = 864,
	x = 0.3286,
	y = 0.3490,
	isQuest = true,
	tooltipQuest = 51283, -- "Voyage to the West"
}
data[48172] = { -- return to Boralus at the end of Vol'dun foothold campaign chain
	mapID = 1161, -- Boralus, Tiragarde Sound
	x = 0.7002,
	y = 0.2708,
	isQuest = true,
	tooltipQuest = 51969, -- "Return to Boralus"
}

-- Silas' Stone of Transportation
-- all the destinations are flight masters, so we can get info with C_TaxiMap.GetTaxiNodesForMap
data[50777] = { -- Diretusk Hollow (Horde)
	mapID = 942, -- Stormsong Valley
	x = 0.5426,
	y = 0.4925,
}
data[50779] = { -- Hillcrest Pasture (Horde)
	mapID = 942, -- Stormsong Valley
	x = 0.5273,
	y = 0.8024,
}
data[50780] = { -- Ironmaul Overlook (Horde)
	mapID = 942, -- Stormsong Valley
	x = 0.7592,
	y = 0.6409,
}
data[50783] = { -- Seeker's Vista
	mapID = 942, -- Stormsong Valley
	x = 0.4007,
	y = 0.3726,
}
data[50784] = { -- Stonetusk Watch (Horde)
	mapID = 942, -- Stormsong Valley
	x = 0.3885,
	y = 0.6676,
}
data[50787] = { -- Windfall Cavern (Horde)
	mapID = 942, -- Stormsong Valley
	x = 0.6083,
	y = 0.2719,
}
data[50785] = { -- Tidecross (Alliance)
	mapID = 942, -- Stormsong Valley
	x = 0.6552,
	y = 0.4799,
}
data[50781] = { -- Mildenhall Meadery (Alliance)
	mapID = 942, -- Stormsong Valley
	x = 0.6854,
	y = 0.6508,
}
data[50776] = { -- Deadwash (Alliance)
	mapID = 942, -- Stormsong Valley
	x = 0.4278,
	y = 0.5739,
}
data[50778] = { -- Fort Daelin (Alliance)
	mapID = 942, -- Stormsong Valley
	x = 0.3428,
	y = 0.4732,
}
data[50775] = { -- Brennadam (Alliance)
	mapID = 942, -- Stormsong Valley
	x = 0.5968,
	y = 0.7049,
}
data[50782] = { -- Millstone Hamlet (Alliance)
	mapID = 942, -- Stormsong Valley
	x = 0.3081,
	y = 0.6654,
}
data[50763] = { -- Castaway Point
	mapID = 895, -- Tiragarde Sound
	x = 0.8639,
	y = 0.8091,
}
data[50769] = { -- Stonefist Watch (Horde)
	mapID = 895, -- Tiragarde Sound
	x = 0.5319,
	y = 0.6312,
}
data[50773] = { -- Waning Glacier (Horde)
	mapID = 895, -- Tiragarde Sound
	x = 0.3967,
	y = 0.1847,
}
data[50774] = { -- Wolf's Den (Horde)
	mapID = 895, -- Tiragarde Sound
	x = 0.6203,
	y = 0.1353,
}
data[50765] = { -- Kennings Lodge (Alliance)
	mapID = 895, -- Tiragarde Sound
	x = 0.7663,
	y = 0.6541,
}
data[50767] = { -- Outrigger Post (Alliance)
	mapID = 895, -- Tiragarde Sound
	x = 0.3557,
	y = 0.2487,
}
data[50762] = { -- Bridgeport (Alliance)
	mapID = 895, -- Tiragarde Sound
	x = 0.7577,
	y = 0.4865,
}
data[50764] = { -- Hatherford (Alliance)
	mapID = 895, -- Tiragarde Sound
	x = 0.6691,
	y = 0.2312,
}
data[50766] = { -- Norwington Estate (Alliance)
	mapID = 895, -- Tiragarde Sound
	x = 0.5287,
	y = 0.2876,
}
data[50771] = { -- Tradewinds Market (Alliance)
	mapID = 895, -- Tiragarde Sound
	x = 0.7358,
	y = 0.2342,
}
data[50772] = { -- Vigil Hill (Alliance)
	mapID = 895, -- Tiragarde Sound
	x = 0.5770,
	y = 0.6154,
}
data[50698] = { -- Anyport
	mapID = 896, -- Drustvar
	x = 0.1917,
	y = 0.4331,
}
data[50704] = { -- Mudfisher Cove (Horde)
	mapID = 896, -- Drustvar
	x = 0.6211,
	y = 0.1688,
}
data[50705] = { -- Swiftwind Post (Horde)
	mapID = 896, -- Drustvar
	x = 0.6641,
	y = 0.5923,
}
data[50700] = { -- Falconhurst (Alliance)
	mapID = 896, -- Drustvar
	x = 0.2698,
	y = 0.7232,
}
data[50702] = { -- Hangman's Point (Alliance)
	mapID = 896, -- Drustvar
	x = 0.7105,
	y = 0.4082,
}
data[50706] = { -- Timbered Strand (Alliance)
	-- aka "Fletcher's Hollow"
	mapID = 896, -- Drustvar
	x = 0.7017,
	y = 0.6040,
}
data[50699] = { -- Arom's Stand (Alliance)
	mapID = 896, -- Drustvar
	x = 0.3815,
	y = 0.5247,
}
data[50708] = { -- Watchman's Rise (Alliance)
	mapID = 896, -- Drustvar
	x = 0.3182,
	y = 0.3044,
}
data[50707] = { -- Trader's Camp (Alliance)
	-- aka "Barbthorn Ridge"
	mapID = 896, -- Drustvar
	x = 0.6263,
	y = 0.2388,
}

data[50701] = { -- Fallhaven (Alliance)
	mapID = 896, -- Drustvar
	x = 0.5512,
	y = 0.3479,
}
data[50669] = { -- Atal'Dazar (Horde)
	mapID = 862, -- Zuldazar
	x = 0.4612,
	y = 0.3578,
}
data[50670] = { -- Atal'Gral
	mapID = 862, -- Zuldazar
	x = FACTION == 'Horde' and 0.8004 or 0.7996,
	y = FACTION == 'Horde' and 0.4149 or 0.4145,
}
data[50672] = { -- Garden of the Loa (Horde)
	mapID = 862, -- Zuldazar
	x = 0.4971,
	y = 0.2628,
}
data[50673] = { -- Isle of Fangs (Horde)
	mapID = 862, -- Zuldazar
	x = 0.5442,
	y = 0.8701,
}
data[50674] = { -- Nesingwary's Trek
	-- aka "Nesingwary's Gameland"
	mapID = 862, -- Zuldazar
	x = 0.6623,
	y = 0.1767,
}
data[50675] = { -- Port of Zandalar (Horde)
	mapID = 862, -- Zuldazar
	x = 0.5866,
	y = 0.5902,
}
data[50676] = { -- Scaletrader Post
	mapID = 862, -- Zuldazar
	x = 0.7078,
	y = 0.2959,
}
data[50677] = { -- Seeker's Outpost
	mapID = 862, -- Zuldazar
	x = 0.7044,
	y = 0.6527,
}
data[50678] = { -- Temple of the Prophet (Horde)
	mapID = 862, -- Zuldazar
	x = 0.4974,
	y = 0.4452,
}
data[50679] = { -- The Great Seal (Horde)
	mapID = 862, -- Zuldazar
	x = 0.5852,
	y = 0.4280,
}
data[50680] = { -- The Mugambala (Horde)
	mapID = 862, -- Zuldazar
	x = 0.5333,
	y = 0.5723,
}
data[50681] = { -- Warbeast Kraal (Horde)
	mapID = 862, -- Zuldazar
	x = 0.6723,
	y = 0.4299,
}
data[50682] = { -- Xibala (Horde)
	mapID = 862, -- Zuldazar
	x = 0.4483,
	y = 0.7217,
}
data[50684] = { -- Zeb'ahari (Horde)
	mapID = 862, -- Zuldazar
	x = 0.7732,
	y = 0.1536,
}
data[50671] = { -- Castaway Encampment (Alliance)
	mapID = 862, -- Zuldazar
	x = 0.7765,
	y = 0.5453,
}

data[50683] = { -- Xibala (Alliance)
	mapID = 862, -- Zuldazar
	x = 0.4483,
	y = 0.7217,
}
data[50686] = { -- Gloom Hollow (Horde)
	mapID = 863, -- Nazmir
	x = 0.6712,
	y = 0.4338,
}
data[50688] = { -- Zo'bal Ruins (Horde)
	mapID = 863, -- Nazmir
	x = 0.4016,
	y = 0.4286,
}
data[50689] = { -- Zul'jan Ruins (Horde)
	mapID = 863, -- Nazmir
	x = 0.3893,
	y = 0.7806,
}
data[50685] = { -- Fort Victory (Alliance)
	mapID = 863, -- Nazmir
	x = 0.6225,
	y = 0.4133,
}
data[50687] = { -- Redfield's Watch (Alliance)
	mapID = 863, -- Nazmir
	x = 0.5086,
	y = 0.2078,
}
data[50691] = { -- Sanctuary of the Devoted
	mapID = 864, -- Vol'dun
	x = 0.2763,
	y = 0.5041,
}
data[50692] = { -- Scorched Sands Outpost (Horde)
	mapID = 864, -- Vol'dun
	x = 0.4389,
	y = 0.7601,
}
data[50694] = { -- Temple of Akunda (Horde)
	mapID = 864, -- Vol'dun
	x = 0.5372,
	y = 0.8924,
}
data[50695] = { -- Tortaka Refuge
	mapID = 864, -- Vol'dun
	x = 0.6184,
	y = 0.2167,
}
data[50696] = { -- Vorrik's Sanctum (Horde)
	mapID = 864, -- Vol'dun
	x = 0.4726,
	y = 0.3517,
}
data[50697] = { -- Vulpera Hideout (Horde)
	-- aka "Vulpera Hideaway"
	mapID = 864, -- Vol'dun
	x = 0.5696,
	y = 0.4937,
}


-- Mole Machine
-- this one is treated a little differently; the continents reference the destinations
-- in their sub-dialogs, and when they are clicked they will stage themselves and click the
-- continent (parent) gossip option, then the zone (sub-dialogue) will be automatically selected
data[49322] = { -- Eastern Kingdoms
	children = {
		49331, -- Ironforge
		49332, -- Stormwind
		49333, -- Nethergarde Keep (Blasted Lands)
		49334, -- Aerie Peak (The Hinterlands)
		49335, -- The Masonary (Black Rock Mountains)
		49336, -- Shadowforge City (Black Rock Mountains)
	}
}
data[49323] = { -- Kalimdor
	children = {
		49337, -- Fire Plume Ridge (Un'Goro Crater)
		49338, -- Throne of Flame (Mount Hyjal)
		49339, -- The Great Divide (Southern Barrens)
	}
}
data[49324] = { -- Outland
	children = {
		49340, -- Honor Hold (Hellfire Peninsula)
		49341, -- Fel Pits (Shadowmoon Valley)
		49342, -- Skald (Blade's Edge Mountains)
	}
}
data[49325] = { -- Northrend
	children = {
		49343, -- Argent Tournament Grounds (Icecrown)
		49344, -- Ruby Dragonshrine (Dragonblight)
	}
}
data[49326] = { -- Pandaria
	children = {
		49345, -- One Keg (Kun-Lai Summit)
		49346, -- Stormstout Brewery (Valley of the Four Winds)
	}
}
data[49327] = { -- Draenor
	children = {
		49347, -- Blackrock Foundry Overlook (Gorgrond)
		49348, -- Elemental Plateau (Nagrand)
	}
}
data[49328] = { -- Broken Isles
	children = {
		49349, -- Neltharion's Vault (Highmountain)
		49350, -- Broken Shore
	}
}
data[49331] = { -- Ironforge
	mapID = 27,
	x = 0.6129,
	y = 0.3718,
	parent = 49322,
}
data[49332] = { -- Stormwind
	mapID = 84,
	x = 0.6333,
	y = 0.3734,
	parent = 49322,
}
data[49333] = { -- Nethergarde Keep (Blasted Lands)
	mapID = 17,
	x = 0.6197,
	y = 0.1280,
	parent = 49322,
}
data[49334] = { -- Aerie Peak (The Hinterlands)
	mapID = 26,
	x = 0.1353,
	y = 0.4680,
	parent = 49322,
}
data[49335] = { -- The Masonary (Black Rock Mountains)
	mapID = 35,
	x = 0.3330,
	y = 0.2480,
	parent = 49322,
	tooltip = L['The Masonary'],
}
data[49336] = { -- Shadowforge City
	-- this one is instanced, so we use a approximated location instead
	mapID = 35, -- actual mapID: 1186
	x = 0.5093, -- actual x: 0.6144
	y = 0.1607, -- actual y: 0.2435
	parent = 49322,
	tooltip = L['Shadowforge City'],
}
data[49337] = { -- Fire Plume Ridge (Un'Goro Crater)
	mapID = 78,
	x = 0.5288,
	y = 0.5576,
	parent = 49323,
}
data[49338] = { -- Throne of Flame (Mount Hyjal)
	mapID = 198,
	x = 0.5718,
	y = 0.7711,
	parent = 49323,
}
data[49339] = { -- The Great Divide (Southern Barrens)
	mapID = 199,
	x = 0.3911,
	y = 0.0930,
	parent = 49323,
}
data[49340] = { -- Honor Hold (Hellfire Peninsula)
	mapID = 100,
	x = 0.5309,
	y = 0.6487,
	parent = 49324,
}
data[49341] = { -- Fel Pits (Shadowmoon Valley)
	mapID = 104,
	x = 0.5077,
	y = 0.3530,
	parent = 49324,
}
data[49342] = { -- Skald (Blade's Edge Mountains)
	mapID = 105,
	x = 0.7242,
	y = 0.1764,
	parent = 49324,
}
data[49343] = { -- Argent Tournament Grounds (Icecrown)
	mapID = 118,
	x = 0.7697,
	y = 0.1866,
	parent = 49325,
}
data[49344] = { -- Ruby Dragonshrine (Dragonblight)
	mapID = 115,
	x = 0.4535,
	y = 0.4992,
	parent = 49325,
}
data[49345] = { -- One Keg (Kun-Lai Summit)
	mapID = 379,
	x = 0.5768,
	y = 0.6281,
	parent = 49326,
}
data[49346] = { -- Stormstout Brewery (Valley of the Four Winds)
	mapID = 376,
	x = 0.3151,
	y = 0.7359,
	parent = 49326,
}
data[49347] = { -- Blackrock Foundry Overlook (Gorgrond)
	mapID = 543,
	x = 0.4669,
	y = 0.3876,
	parent = 49327,
}
data[49348] = { -- Elemental Plateau (Nagrand)
	mapID = 550,
	x = 0.6575,
	y = 0.0825,
	parent = 49327,
}
data[49349] = { -- Neltharion's Vault (Highmountain)
	mapID = 650,
	x = 0.4466,
	y = 0.7290,
	parent = 49328,
}
data[49350] = { -- Broken Shore
	mapID = 646,
	x = 0.7169,
	y = 0.4799,
	parent = 49328,
}

-- Animaflow Teleporter
data[51696] = { -- The Tremaculum
	mapID = 1543, -- The Maw, Shadowlands
	x = 0.3419,
	y = 0.1473,
	isTaxi = true,
}
data[51697] = { -- The Beastwarrens
	mapID = 1543, -- The Maw, Shadowlands
	x = 0.5342,
	y = 0.6364,
	isTaxi = true,
}
data[51698] = { -- Perdition Hold
	mapID = 1543, -- The Maw, Shadowlands
	x = 0.3394,
	y = 0.5678,
	isTaxi = true,
}
data[51699] = { -- Desmotaeron
	mapID = 1543, -- The Maw, Shadowlands
	x = 0.6889,
	y = 0.3680,
	isTaxi = true,
}

-- Manapoof (Pet Battle Dungeon teleport)
data[47007] = {
	mapID = 11, -- Wailing Caverns
	x = 0.2288,
	y = 0.8242,
}
data[47008] = { -- Deadmines
	-- this one is offset so it doesn't collide with the dungeon pin
	mapID = 52, -- Westfall
	x = 0.4050, -- actual x: 0.4142
	y = 0.6850, -- actual y: 0.7121
	tooltipMap = 291, -- Deadmines
}
data[47009] = {
	mapID = 30, -- Gnomeregan
	x = 0.3193,
	y = 0.7169,
}
data[47010] = { -- Stratholme (back entrance)
	mapID = 23, -- Eastern Plaguelands
	x = 0.4323,
	y = 0.1996,
	tooltipMap = 317, -- Stratholme
}
data[47011] = { -- Blackrock Depths
	mapID = 35, -- Blackrock Mountain
	x = 0.3352,
	y = 0.2389,
	tooltipMap = 242, -- Blackrock Depths
}

-- Wyrmhole Generator
data[63907] = { -- "Carelessly leap into the portal, you daredevil"
	mapID = 1978,
	x = 0.25,
	y = 0.25,
	-- tooltipMap = 1978,
}
data[63911] = { -- Waking Shores (random location)
	mapID = 2022,
	x = 0.56,
	y = 0.50,
	tooltipMap = 2022,
}
data[63910] = { -- Ohn'ahran Plains (random location)
	mapID = 2023,
	x = 0.56,
	y = 0.52,
	tooltipMap = 2023,
}
data[63909] = { -- Azure Span (random location)
	mapID = 2024,
	x = 0.58,
	y = 0.38,
	tooltipMap = 2024,
}
data[63908] = { -- Thaldraszus (random location)
	mapID = 2025,
	x = 0.49,
	y = 0.61,
	tooltipMap = 2025,
}
data[108016] = { -- Forbidden Reach (random location)
	mapID = 2151,
	x = 0.51,
	y = 0.47,
	tooltipMap = 2151,
}
data[109715] = { -- Zaralek Cavern (random location)
	mapID = 2133,
	x = 0.46,
	y = 0.51,
	tooltipMap = 2133,
	displayExtra = {
		{
			-- HBD doesn't translate from ZC to Dragon Isles, so we'll have to do it manually
			mapID = 1978, -- Dragon Isles
			x = 0.8697,
			y = 0.8124,
			tooltipMap = 2133,
		}
	}
}

-- MISSING:
-- - Darkshore/Arathi warfronts

addon.data = data

-- keystone teleports
addon.data.dungeonTeleportSpells = {
	-- Cataclysm Keystone
	[68] = 410080, -- Path of Wind's Domain (The Vortex Pinnacle)

	-- Pandaria Challenge Mode
	[313] = 131204, -- Path of the Jade Serpent (Temple of the Jade Serpent)
	[302] = 131205, -- Path of the Stout Brew (Stormstout Brewery)
	[312] = 131206, -- Path of the Shado-Pan (Shado-Pan Monastery)
	[321] = 131222, -- Path of the Mogu King (Mogu'shan Palace)
	[303] = 131225, -- Path of the Setting Sun (Gate of the Setting Sun)
	[324] = 131228, -- Path of the Black Ox (Siege of Niuzao Temple)
	[316] = 131229, -- Path of the Scarlet Mitre (Scarlet Monastery)
	[311] = 131231, -- Path of the Scarlet Blade (Scarlet Halls)
	[246] = 131232, -- Path of the Necromancer (Scholomance)

	-- Draenor Challenge Mode
	[385] = 159895, -- Path of the Bloodmaul (Bloodmaul Slag Mines)
	[558] = 159896, -- Path of the Iron Prow (Iron Docks)
	[547] = 159897, -- Path of the Vigilant (Auchindoun)
	[476] = 159898, -- Path of the Skies (Skyreach)
	[537] = 159899, -- Path of the Crescent Moon (Shadowmoon Burial Grounds)
	[536] = 159900, -- Path of the Dark Rail (Grimrail Depot)
	[556] = 159901, -- Path of the Verdant (The Everbloom)
	[559] = 159902, -- Path of the Burning Mountain (Upper Blackrock Spire)

	-- Legion Keystone
	[860] = 373262, -- Path of the Fallen Guardian (Karazhan)
	[721] = 393764, -- Path of Proven Worth (Halls of Valor)
	[800] = 393766, -- Path of the Grand Magistrix (Court of Stars)
	[767] = 410078, -- Path of the Earth-Warder (Neltharion's Lair)

	-- Battle for Azeroth Keystone
	[1178] = 373274, -- Path of the Scrappy Prince (Mechagon)
	[1001] = 410071, -- Path of the Freebooter (Freehold)
	[1022] = 410074, -- Path of Festering Rot (The Underrot)

	-- Shadowlands Keystone
	[1182] = 354462, -- Path of the Courageous (The Necrotic Wake)
	[1183] = 354463, -- Path of the Plagued (Plaguefall)
	[1184] = 354464, -- Path of the Misty Forest (Mists of Tirna Scithe)
	[1185] = 354465, -- Path of the Sinful Soul (Halls of Atonement)
	[1186] = 354466, -- Path of the Ascendant (Spires of Ascension)
	[1187] = 354467, -- Path of the Undefeated (Theater of Pain)
	[1188] = 354468, -- Path of the Scheming Loa (De Other Side)
	[1189] = 354469, -- Path of the Stone Warden (Sanguine Depths)
	[1194] = 367416, -- Path of the Streetwise Merchant (Tazavesh, the Veiled Market)

	-- Shadowlands Fated
	[1190] = 373190, -- Path of the Sire (Castle Nathria)
	[1193] = 373191, -- Path of the Tormented Soul (Sanctum of Domination)
	[1195] = 373192, -- Path of the First Ones (Sepulcher of the First Ones)

	-- Dragonflight Keystone
	[1202] = 393256, -- Path of the Clutch Defender (Ruby Life Pools)
	[1198] = 393262, -- Path of the Windswept Plains (The Nokhud Offensive)
	[1201] = 393273, -- Path of the Draconic Diploma (Algeth'ar Academy)
	[1203] = 393279, -- Path of the Arcane Secrets (The Azure Vault)
	[1197] = 393222, -- Path of the Watcher's Legacy (Uldaman: Legacy of Tyr)
	[1196] = 393267, -- Path of the Rotting Woods (Brackenhide Hollow)
	[1199] = 393276, -- Path of the Obsidian Hoard (Neltharus)
	[1204] = 393283, -- Path of the Titanic Reservoir (Halls of Infusion)
}
