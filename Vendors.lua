-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)
local L = _G.LibStub("AceLocale-3.0"):GetLocale(addon.constants.addon_name)

local Z = constants.ZONE_NAMES
local V = constants.GAME_VERSIONS

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeVendors()
	local function AddVendor(vendorID, vendorName, zoneName, coordX, coordY, faction, expansionID)
		addon.AcquireTypes.Vendor:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			expansionID = expansionID,
			faction = faction,
			identifier = vendorID,
			item_list = {},
			locationName = zoneName,
			name = vendorName,
		})
	end

	-----------------------------------------------------------------------
	-- Vanilla
	-----------------------------------------------------------------------
    AddVendor(14847, L["Professor Thaddeus Paleo"], Z.ELWYNN_FOREST, 				41.2, 69.8, "Neutral",	V.ORIG)

    -----------------------------------------------------------------------
	-- TBC
	-----------------------------------------------------------------------
    AddVendor(18072, L["Elementalist Sharvak"], 	Z.NAGRAND_OUTLAND, 				60.6, 22.2, "Neutral",	V.TBC)

    -----------------------------------------------------------------------
	-- Wrath of The Lich King
	-----------------------------------------------------------------------
    AddVendor(28715, L["Endora Moorehead"], 		Z.DALARAN_NORTHREND, 			38.6, 53.8, "Neutral",	V.WOTLK)
    AddVendor(28723, L["Larana Drome"], 			Z.DALARAN_NORTHREND, 			42.3, 37.5, "Neutral",	V.WOTLK)
    AddVendor(30734, L["Jezebel Bican"], 			Z.HELLFIRE_PENINSULA, 			53.9, 65.5, "Alliance",	V.WOTLK)
    AddVendor(30735, L["Kul Inkspiller"], 			Z.HELLFIRE_PENINSULA, 			52.5, 36.0, "Horde",	V.WOTLK)

    -----------------------------------------------------------------------
	-- Cataclysm
	-----------------------------------------------------------------------
 	AddVendor(14847, L["Professor Thaddeus Paleo"], Z.DARKMOON_ISLAND, 				51.8, 60.6, "Neutral",	V.CATA)
    AddVendor(49703, L["Casandra Downs"], 			Z.TWILIGHT_HIGHLANDS, 			78.6, 76.2, "Alliance",	V.CATA)
    AddVendor(50248, L["Una Kobuna"], 				Z.TWILIGHT_HIGHLANDS, 			76.6, 49.4, "Horde",	V.CATA)

    -----------------------------------------------------------------------
	-- Mists of Pandaria
	-----------------------------------------------------------------------
    AddVendor(73293, L["Whizzig"], 					Z.TIMELESS_ISLE, 				42.8, 59.2, "Neutral",	V.MOP)

    -----------------------------------------------------------------------
	-- Warlords of Dreanor
	-----------------------------------------------------------------------
    AddVendor(77372, L["Eric Broadoak"], 			Z.LUNARFALL, 					0.0, 0.0, 	"Alliance",	V.WOD) -- Alliance Garrison
    AddVendor(79829, L["Urgra"], 					Z.FROSTWALL, 					0.0, 0.0, 	"Horde",	V.WOD) -- Horde Garrison
    AddVendor(87063, L["Joao Calhandro"], 			Z.STORMSHIELD, 					63.0, 34.4, "Alliance",	V.WOD) -- Alliance Ashran
    AddVendor(87551, L["Maru'sa"], 					Z.WARSPEAR, 					76.0, 48.6, "Horde",	V.WOD) -- Horde Ashran

    -----------------------------------------------------------------------
	-- Legion
	-----------------------------------------------------------------------
    AddVendor(93544, L["Jang Quillpaw"], 			Z.DALARAN_BROKENISLES, 			41.2, 36.8, "Neutral",	V.LEGION)
    AddVendor(94100, L["Lucas Sigmund"], 			Z.HIGHMOUNTAIN, 				40.0, 52.4, "Neutral",	V.LEGION)
    AddVendor(106887, L["Cravitz Lorent"], 			Z.DALARAN_BROKENISLES, 			47.0, 28.8, "Neutral",	V.LEGION)
    AddVendor(120414, L["Captain Ruysantos"], 		Z.BROKEN_SHORE, 				42.1, 58.9, "Neutral",	V.LEGION)
    AddVendor(120898, L["Warmage Kath'leen"], 		Z.BROKEN_SHORE, 				44.4, 62.3, "Neutral",	V.LEGION)

    -----------------------------------------------------------------------
	-- Battle for Azeroth
	-----------------------------------------------------------------------
    AddVendor(128702, L["Roko"], 					Z.TIRAGARDE_SOUND, 				79.6, 81.8, "Neutral",	V.BFA)
    AddVendor(160711, L["Zhang Ku"], 				Z.VALE_OF_ETERNAL_BLOSSOMS, 	44.4, 75.4, "Neutral",	V.BFA)
    AddVendor(160714, L["Provisioner Qorra"], 		Z.ULDUM, 						55.1, 32.9, "Neutral",	V.BFA)

    -----------------------------------------------------------------------
	-- Shadowlands
	-----------------------------------------------------------------------
    AddVendor(162447, L["Spindlenose"], 			Z.ARDEMWEALD, 					59.6, 52.8, "Neutral",	V.SHA)
    AddVendor(171808, L["Ta'tru"], 					Z.REVENDRETH, 					51.0, 78.8, "Neutral",	V.SHA)
    AddVendor(172634, L["Brightgleam"], 			Z.ARDENWEALD, 					33.2, 51.6, "Neutral",	V.SHA)


    self.InitializeVendors = nil
end
