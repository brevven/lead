require("lead-recipe-colors")
require("lead-recipe-final-5d")
require("lead-recipe-final-rrr")
require("lead-recipe-final-stacking")

----
local util = require("__bzlead__.data-util");


if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"]) then
-- If furnaces are treated as furnaces, we need 2 outputs
for i, entity in pairs(data.raw.furnace) do
  if entity.result_inventory_size ~= nil and entity.result_inventory_size < 2 and util.contains(entity.crafting_categories, "smelting") then
    entity.result_inventory_size = 2
  end
end
end 

if mods["Krastorio2"] then 
  util.replace_ingredient("rifle-magazine", "iron-plate", "lead-plate")
  util.replace_ingredient("anti-material-rifle-magazine", "iron-plate", "lead-plate")
  util.replace_some_ingredient("kr-crusher", "iron-beam", 5, "lead-plate", 5)
  util.replace_ingredient("kr-shelter", "iron-plate", "lead-plate")
  util.add_ingredient("kr-advanced-furnace", "lead-plate", 20)
  util.replace_ingredient("uranium-fuel-cell", "steel-plate", "lead-plate")
  util.replace_some_ingredient("kr-fluid-storage-1", "steel-plate", 10, "lead-plate", 10)
  util.replace_some_ingredient("kr-fluid-storage-2", "steel-plate", 30, "lead-plate", 30)
end

if mods["modmashsplintergold"] then
  if mods["Krastorio2"] then 
    util.replace_ingredient("rifle-magazine-with-gold", "iron-plate", "lead-plate")
    util.replace_ingredient("anti-material-rifle-magazine-with-gold", "iron-plate", "lead-plate")
  end
end

if mods["space-exploration"] then 
  -- Organization

  -- core mining balancing
  util.add_to_product("se-core-fragment-omni", "lead-ore", -4)
end
