-- Titanium recipe & tech changes
--
local util = require("__bzlead__.util");

if (not mods["bobplates"] and not mods["angelssmelting"]) then
  util.replace_ingredient("pipe", "iron-plate", "lead-plate")
  util.replace_ingredient("pipe-to-ground", "iron-plate", "lead-plate")
  util.replace_some_ingredient("storage-tank", "iron-plate", "lead-plate", 10)
  util.replace_ingredient("battery", "iron-plate", "lead-plate")
  util.replace_ingredient("uranium-fuel-cell", "iron-plate", "lead-plate")
  util.replace_some_ingredient("gun-turret", "iron-plate", "lead-plate", 5)

  util.add_ingredient("big-electric-pole", "lead-plate", 2)
  util.add_ingredient("substation", "lead-plate", 2)
  util.add_ingredient("electric-furnace", "lead-plate", 5)
  util.add_ingredient("solar-panel", "lead-plate", 5)

  -- ammunition
  util.replace_ingredient("firearm-magazine", "iron-plate", "lead-plate")
  util.replace_ingredient("shotgun-shell", "iron-plate", "lead-plate")
end


-- Krastorio 2 changes
if mods["Krastorio2"] then
-- todo
end

