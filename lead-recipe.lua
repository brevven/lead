-- Lead smelting

local util = require("__bzlead__.data-util");

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"] and not mods["IndustrialRevolution"]) then
data:extend({
  {
    type = "recipe",
    name = util.me.lead_plate,
    category = "smelting",
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
          main_product = util.me.lead_plate,
          enabled = true,
          energy_required = 16,
          ingredients = {{"lead-ore", 10}},
          results = util.me.byproduct() and {
            {type="item", name = util.me.lead_plate, amount_min=4, amount_max=5},
            {type="item", name = "copper-ore", amount_min=1, amount_max=2},
          } or {
            {type="item", name = util.me.lead_plate, amount=5},
          },
        } or
        {
          main_product = util.me.lead_plate,
          enabled = true,
          energy_required = 6.4,
          ingredients = {{"lead-ore", 2}},
          results = util.me.byproduct() and {
            {type="item", name = util.me.lead_plate, amount=2, probability=5/6},
            {type="item", name = "copper-ore", amount=1, probability=1/3},
          } or {
            {type="item", name = util.me.lead_plate, amount=2},
          },
        }),
    expensive =
    {
      main_product = util.me.lead_plate,
      enabled = true,
      energy_required = 12.8,
      ingredients = {{"lead-ore", 4}},
      results = util.me.byproduct() and {
        {type="item", name = util.me.lead_plate, amount=2, probability=5/6},
        {type="item", name = "copper-ore", amount=1, probability=1/3},
      } or {
        {type="item", name = util.me.lead_plate, amount=2},
      },
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
log("BZZZZZZ")
log(serpent.dump(data.raw.recipe["lead-plate"]))

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

if util.me.more_ammo() then
if mods.Krastorio2 and util.me.get_setting("kr-more-realistic-weapon") then
data:extend({
{
  type = "recipe",
  name = "firearm-magazine-iron-lead",
  category = "crafting",
  order = "a[basic-clips]-a01[pistol-magazine]-i",
  energy_required = 1,
  ingredients = {{"lead-plate", 2}, {"iron-plate", 3}},
  result = "firearm-magazine",
  result_count = 2,
  enabled = false,
  icons = {
    { icon = util.k2assets().."/icons/items-with-variations/ammo/pistol-ammo-1.png", icon_size = 64},
    { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -6}},
    { icon = "__bzlead__/graphics/icons/lead-plate.png",
      icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}},
  },
},
{
  type = "recipe",
  name = "firearm-magazine-iron-only",
  category = "crafting",
  order = "a[basic-clips]-a01[pistol-magazine]-io",
  energy_required = 0.5,
  ingredients = {{"iron-plate", 3}},
  result = "firearm-magazine",
  enabled = false,
  icons = {
    { icon = util.k2assets().."/icons/items-with-variations/ammo/pistol-ammo-1.png", icon_size = 64},
    { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -6}},
  },
},
{
  type = "recipe",
  name = "firearm-magazine-copper-lead",
  category = "crafting",
  order = "a[basic-clips]-a01[pistol-magazine]-lc",
  energy_required = 0.5,
  ingredients = {{"lead-plate", 1}, {"copper-plate", 1}},
  result = "firearm-magazine",
  enabled = false,
  icons = {
    { icon = util.k2assets().."/icons/items-with-variations/ammo/pistol-ammo-1.png", icon_size = 64},
    { icon = "__base__/graphics/icons/copper-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -6}},
    { icon = "__bzlead__/graphics/icons/lead-plate.png",
      icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}},
  },
},
{
  type = "recipe",
  name = "rifle-magazine-iron-lead",
  category = "crafting",
  order = "a[basic-clips]-a03[rifle-magazine]-i",
  energy_required = 2,
  ingredients = {{"lead-plate", 2}, {"iron-plate", 3}, {"copper-plate", 2}},
  result = "rifle-magazine",
  result_count = 2,
  enabled = false,
  icons = {
    { icon = util.k2assets().."/icons/items-with-variations/ammo/rifle-ammo-1.png", icon_size = 64},
    { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -6}},
    { icon = "__bzlead__/graphics/icons/lead-plate.png",
      icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}},
  },
},
{
  type = "recipe",
  name = "rifle-magazine-iron",
  category = "crafting",
  order = "a[basic-clips]-a03[rifle-magazine]-io",
  energy_required = 1,
  ingredients = {{"iron-plate", 4}, {"copper-plate", 1}},
  result = "rifle-magazine",
  enabled = false,
  icons = {
    { icon = util.k2assets().."/icons/items-with-variations/ammo/rifle-ammo-1.png", icon_size = 64},
    { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -6}},
  },
},
{
  type = "recipe",
  name = "rifle-magazine-copper-lead",
  category = "crafting",
  order = "a[basic-clips]-a03[rifle-magazine]-lc",
  energy_required = 1,
  ingredients = {{"lead-plate", 3}, {"copper-plate", 1}},
  result = "rifle-magazine",
  enabled = false,
  icons = {
    { icon = util.k2assets().."/icons/items-with-variations/ammo/rifle-ammo-1.png", icon_size = 64},
    { icon = "__base__/graphics/icons/copper-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -6}},
    { icon = "__bzlead__/graphics/icons/lead-plate.png",
      icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}},
  },
},
})

else
data:extend({
{
  type = "recipe",
  name = "firearm-magazine-iron-lead",
  category = "crafting",
  order = "a[basic-clips]-a[firearm-magazine]-i",
  energy_required = data.raw.recipe["firearm-magazine"].energy_required * 2,
  ingredients = {{"lead-plate", 4}, {"iron-plate", 5}},
  result = "firearm-magazine",
  result_count = 2,
  enabled = false,
  icons = {
    { icon = "__base__/graphics/icons/firearm-magazine.png", icon_size = 64},
    { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -8}},
    { icon = "__bzlead__/graphics/icons/lead-plate.png",
      icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -8}},
  },
},
{
  type = "recipe",
  name = "firearm-magazine-iron-only",
  category = "crafting",
  order = "a[basic-clips]-a[firearm-magazine]-io",
  energy_required = data.raw.recipe["firearm-magazine"].energy_required,
  ingredients = {{"iron-plate", 5}},
  result = "firearm-magazine",
  enabled = false,
  icons = {
    { icon = "__base__/graphics/icons/firearm-magazine.png", icon_size = 64},
    { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -8}},
  },
},
{
  type = "recipe",
  name = "firearm-magazine-copper-lead",
  category = "crafting",
  order = "a[basic-clips]-a[firearm-magazine]-c",
  energy_required = data.raw.recipe["firearm-magazine"].energy_required,
  ingredients = {{"lead-plate", 3}, {"copper-plate", 1}},
  result = "firearm-magazine",
  enabled = false,
  icons = {
    { icon = "__base__/graphics/icons/firearm-magazine.png", icon_size = 64},
    { icon = "__base__/graphics/icons/copper-plate.png", icon_size = 64,
      scale=0.25, shift= {8, -8}},
    { icon = "__bzlead__/graphics/icons/lead-plate.png",
      icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -8}},
  },
},
})
end
end
