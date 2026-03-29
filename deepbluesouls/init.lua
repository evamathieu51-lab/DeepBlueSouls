minetest.log("action","[deepbluesouls] Mod chargé")

local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

dofile(modpath .. "/utils.lua")
dofile(modpath .. "/quests.lua")
dofile(modpath .. "/hud.lua")
dofile(modpath .. "/nodes.lua")
dofile(modpath .. "/mobs.lua")
dofile(modpath .. "/hud.lua")
dofile(modpath .. "/mapgen.lua")
dofile(modpath .. "/globalstep.lua")
