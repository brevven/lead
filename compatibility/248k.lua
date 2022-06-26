local util = require("data-util");

local pb2 = "fu_lead_item"


-- Swap out all 248k titanium for BZ titanium_plate
for i, recipe in pairs(data.raw.recipe) do
  util.replace_ingredient(recipe.name, pb2, "lead-plate")
  util.replace_product(recipe.name, pb2, "lead-plate")
end

-- Remove 248k titanium plate
util.remove_raw("item", pb2)

-- Update 248k titanium production chain to include titanium ore
util.add_ingredient("fu_pure_ore_recipe", "lead-ore", 5)
util.add_to_product("fu_pure_ore_recipe", "fi_materials_pure_lead", 5)

