-- Additional recipes if Space Exploration mod is enabled
local util = require("data-util");

if mods["space-exploration"] then
  se_delivery_cannon_recipes[util.me.lead_ore] = {name= util.me.lead_ore}
  se_delivery_cannon_recipes[util.me.lead_plate] = {name= util.me.lead_plate}

  data:extend({
  {
    type = "recipe",
    icons = {
      { icon = "__base__/graphics/icons/landfill.png", icon_size = 64, icon_mipmaps = 3 },
      { icon = "__bzlead__/graphics/icons/lead-ore.png", icon_size = 64, scale = 0.25},
    },
    name = "landfill-lead-ore",
    category = "hard-recycling",
    order = "z-b-lead",
    subgroup = "terrain",
    result = "landfill",
    ingredients = {{"lead-ore", 50}},
  }
  })

if string.sub(mods["space-exploration"], 1, 3) == "0.6" then
  data:extend({
  {
    type = "item-subgroup",
    name = "lead",
    group = "resources",
    order = "a-h-z-a",
  }
  })
  util.set_item_subgroup("lead-plate", "lead")
  data:extend({
  {
    type = "item",
    name = "lead-ingot",
    icons = {{icon = "__bzlead__/graphics/icons/lead-ingot.png", icon_size = 128}},
    order = "b-b",
    stack_size = 50,
    subgroup = "lead",
  },
  {
    type = "fluid",
    name = "molten-lead",
    default_temperature = 600,
    max_temperature = 600,
    base_color = {r=121, g=80, b=80},
    flow_color = {r=121, g=80, b=80},
    icons = {{icon = "__bzlead__/graphics/icons/molten-lead.png", icon_size = 128}},
    order = "a[molten]-a",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false,
    subgroup = "fluid",
  },
  {
    type = "recipe",
    category = "smelting",
    name = "molten-lead",
    main_product = "molten-lead",
    subgroup = "lead",
    results = {
      {type = "fluid", name = "molten-lead", amount = mods.Krastorio2 and 750 or 900},
    },
    energy_required = 60,
    ingredients = {
      {name = mods.Krastorio2 and "enriched-lead" or "lead-ore", amount = 24},
      {type = "fluid", name = "se-pyroflux", amount = 10},
    },
    enabled = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
    order = "a-a"
  },
  {
    type = "recipe",
    name = "lead-ingot",
    category = "casting",
    results = {{"lead-ingot", 1}},
    energy_required = 100,
    ingredients = {
      {type = "fluid", name = "molten-lead", amount = 250},
    },
    enabled = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
  },
  {
    type = "recipe",
    category = "crafting",
    name = "lead-ingot-to-plate",

    icons = {
      {icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, icon_mipmaps = 3},
      {icon = "__bzlead__/graphics/icons/lead-ingot.png", icon_size = 128, scale = 0.125, shift = {-8, -8}},
    },
    results = {
      {name = "lead-plate", amount = 10},
    },
    energy_required = 5,
    ingredients = {
      {name = "lead-ingot", amount = 1}
    },
    enabled = false,
    always_show_made_in = true,
    allow_decomposition = false,
    order = "a-c-b"
  },
  })
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "molten-lead"})
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "lead-ingot"})
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "lead-ingot-to-plate"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "molten-lead"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "lead-ingot"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "lead-ingot-to-plate"})
  if mods["Krastorio2"] then
    util.set_item_subgroup("enriched-lead", "lead")
    data.raw.recipe["enriched-lead-plate"].order= "d[lead-plate]"
    se_delivery_cannon_recipes["enriched-lead"] = {name= "enriched-lead"}
  else
    if util.me.byproduct() then util.add_product("molten-lead", {"copper-ore", 6}) end
  end
else
  data.raw.item["lead-plate"].subgroup = "plates"
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
        {name = util.me.lead_plate, amount = 12},
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
      subgroup = "plates",
      order = "d[lead-plate]",
      energy_required = 24,
      enabled = false,
      always_show_made_in = true,
      allow_as_intermediate = false,
      ingredients = {
        {name = "lead-ore", amount = 8},
        {name = "se-vulcanite-block", amount = 1},
      },
      results = {
        {name = util.me.lead_plate, amount = util.me.byproduct() and 10 or 12},
      },
      icons =
      {
        { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, icon_mipmaps = 3 },
        { icon = "__space-exploration-graphics__/graphics/icons/vulcanite-block.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-10, -10}},
      },

      
    },
    })
    if util.me.byproduct() then util.add_product("lead-smelting-vulcanite", {"copper-ore", 2}) end
    table.insert(data.raw.technology["se-processing-vulcanite"].effects, 
        {type = "unlock-recipe", recipe= "lead-smelting-vulcanite"})
  end
end
end
