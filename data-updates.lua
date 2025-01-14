require("lead-asteroid-updates")
require("lead-recipe-updates")
require("lead-matter")
require("omni")
require("map-gen-preset-updates")
require("strange-matter")
require("compatibility/248k")
require("compatibility/sciencecosttweakerm")
require("compatibility/crafting-efficiency")

local util = require("data-util")
util.redo_recycling()

if mods.Asteroid_Mining and not data.raw.item["asteroid-lead-ore"] then
  util.addtype("lead-ore", {a = 0,r = 0.35,g = 0.10,b = 0.10})
end
