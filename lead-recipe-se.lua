-- Additional recipes if Space Exploration mod is enabled
local util = require("__bzlead__.util");

if mods["space-exploration"] then
  se_delivery_cannon_recipes[util.lead_ore] = {name= util.lead_ore}
  se_delivery_cannon_recipes[util.lead_plate] = {name= util.lead_plate}
  if mods["Krastorio2"] then
    data:extend({
    {
      type = "recipe",
      name = "enriched-lead-smelting-vulcanite",
      category = "smelting",
      order = "d[lead-plate]",
      energy_required = 24,
      enabled = false,
      always_show_made_in = true,
      allow_as_intermediate = false,
      ingredients = {
        {name = "enriched-lead", amount = 8},
        {name = "se-vulcanite-block", amount = 1},
      },
      results = {
        {name = util.lead_plate, amount = 12},
      },
      icons =
      {
        { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64 },
        { icon = "__space-exploration-graphics__/graphics/icons/vulcanite-block.png", icon_size = 64, scale=0.25, shift= {-10, -10}},
      },
      
    },
    })
    table.insert(data.raw.technology["se-processing-vulcanite"].effects, 
        {type = "unlock-recipe", recipe= "enriched-lead-smelting-vulcanite"})
    data.raw.recipe["enriched-lead-plate"].order= "d[lead-plate]"
    se_delivery_cannon_recipes["enriched-lead"] = {name= "enriched-lead"}
  else
    data:extend({
    {
      type = "recipe",
      name = "lead-smelting-vulcanite",
      category = "smelting",
      order = "d[lead-plate]",
      energy_required = 48,
      enabled = false,
      always_show_made_in = true,
      allow_as_intermediate = false,
      ingredients = {
        {name = "lead-ore", amount = 20},
        {name = "se-vulcanite-block", amount = 1},
      },
      results = {
        {name = util.lead_plate, amount = 6},
      },
      icons =
      {
        { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, icon_mipmaps = 3 },
        { icon = "__space-exploration-graphics__/graphics/icons/vulcanite-block.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-10, -10}},
      },

      
    },
    })
    table.insert(data.raw.technology["se-processing-vulcanite"].effects, 
        {type = "unlock-recipe", recipe= "lead-smelting-vulcanite"})
  end
end
