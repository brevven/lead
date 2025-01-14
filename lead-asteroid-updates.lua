local util = require("data-util");

if mods["space-age"] then

  -- Due to ammunition changes, we have to make some changes to asteroid processing

  util.replace_ingredient("space-science-pack", "iron-plate", "lead-plate")

  util.replace_product("metallic-asteroid-crushing", "iron-ore", "lead-ore")
  util.add_product("advanced-metallic-asteroid-crushing", util.item("lead-ore", 8))
  util.set_product_amount("advanced-metallic-asteroid-crushing", "iron-ore", 3)
  util.set_product_amount("advanced-metallic-asteroid-crushing", "copper-ore", 3)

  data:extend({
    {
      type = "recipe",
      name = "alternative-metallic-asteroid-crushing",
      -- localised_name = {"recipe-name.alternative-metallic-asteroid-crushing"},
      icons = 
      {
        {icon="__space-age__/graphics/icons/metallic-asteroid-crushing.png", size=64},
        {icon="__base__/graphics/icons/iron-ore.png", size=64, scale=0.25, shift={-8,0}},
        {icon="__bzlead__/graphics/icons/lead-ore.png", size=64, scale=0.25, shift={8,0}},
      },
      category = "crushing",
      subgroup="space-crushing",
      order = "b-a-z-b",
      auto_recycle = false,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "metallic-asteroid-chunk", amount = 1}
      },
      energy_required = 5,
      results =
      {
        {type = "item", name = "lead-ore", amount = 10},
        {type = "item", name = "iron-ore", amount = 7},
        {type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.1}
      },
      allow_productivity = true,
      allow_decomposition = false
    },
  })
  util.add_unlock("space-platform-thruster", "alternative-metallic-asteroid-crushing")


end
