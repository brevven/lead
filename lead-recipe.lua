-- Lead smelting

local util = require("__bzlead__.util");

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"] and not mods["IndustrialRevolution"]) then
data:extend({
  {
    type = "recipe",
    name = util.me.lead_plate,
    category = "smelting",
    subgroup = "raw-material",
    order = "d[lead-plate]",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, icon_mipmaps = 3, },
          { icon = "__bzlead__/graphics/icons/lead-ore.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -8}},
        } or {
          { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, icon_mipmaps = 3, },
        }
),
    normal = (mods["Krastorio2"] and
        {
          enabled = true,
          energy_required = 16,
          ingredients = {{"lead-ore", 10}},
          results = {
            {type="item", name = util.me.lead_plate, amount_min=4, amount_max=5},
            {type="item", name = "copper-ore", amount_min=1, amount_max=2},
          }
        } or
        {
          enabled = true,
          energy_required = 6.4,
          ingredients = {{"lead-ore", 2}},
          results = {
            {type="item", name = util.me.lead_plate, amount=2, probability=5/6},
            {type="item", name = "copper-ore", amount=1, probability=1/3},
          }
        }),
    expensive =
    {
      enabled = true,
      energy_required = 12.8,
      ingredients = {{"lead-ore", 4}},
      results = {
        {type="item", name = util.me.lead_plate, amount=2, probability=5/6},
        {type="item", name = "copper-ore", amount=2, probability=1/3},
      }
    }
  },
  {
    type = "item",
    name = util.me.lead_plate,
    icon = "__bzlead__/graphics/icons/lead-plate.png",
    icon_size = 64, icon_mipmaps = 3,
    subgroup = "raw-material",
    order = "b[lead-plate]",
    stack_size = util.get_stack_size(100)
  },
  mods["TheBigFurnace"] and {
    type = "recipe",
    name = "big-lead-plate",
    icons = { { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64 }, },
    subgroup = "raw-material",
    category = "big-smelting",
    order = "d[lead-plate]",
    normal =
    {
      enabled = true,
      energy_required = 7,
      ingredients = {{"lead-ore", 100}},
      results = {
        {type="item", name = util.me.lead_plate, amount=100, probability=5/6},
        {type="item", name = "copper-ore", amount=50, probability=1/3},
      }
    },
    expensive =
    {
      enabled = true,
      energy_required = 17.5,
      ingredients = {{"lead-ore", 100}},
      results = {
        {type="item", name = util.me.lead_plate, amount=50, probability=5/6},
        {type="item", name = "copper-ore", amount=25, probability=1/3},
      }
    }
  } or nil,
})
end

if mods["IndustrialRevolution"] then
data:extend({
  {
    type = "recipe",
    name = "bz-lead-ingot",
    category = "smelting",
    subgroup = "raw-material",
    order = "d[lead-plate]",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__IndustrialRevolution__/graphics/icons/64/lead-ingot.png", icon_size = 64, icon_mipmaps = 4, },
          { icon = "__bzlead__/graphics/icons/lead-ore.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -8}},
        } or {
          { icon = "__IndustrialRevolution__/graphics/icons/64/lead-ingot.png", icon_size = 64, icon_mipmaps = 4, },
        }),
    normal = (mods["Krastorio2"] and
        {
          enabled = true,
          energy_required = 16,
          ingredients = {{"lead-ore", 10}},
          results = {
            {type="item", name = "lead-ingot", amount_min=4, amount_max=5},
            {type="item", name = "copper-ore", amount_min=1, amount_max=2},
          }
        } or
        {
          enabled = true,
          energy_required = 6.4,
          ingredients = {{"lead-ore", 2}},
          results = {
            {type="item", name = "lead-ingot", amount=2, probability=5/6},
            {type="item", name = "copper-ore", amount=1, probability=1/3},
          }
        }),
    expensive =
    {
      enabled = true,
      energy_required = 12.8,
      ingredients = {{"lead-ore", 4}},
      results = {
        {type="item", name = "lead-ingot", amount=2, probability=5/6},
        {type="item", name = "copper-ore", amount=2, probability=1/3},
      }
    }
  },
})
end
