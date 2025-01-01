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
    main_product = util.me.lead_plate,

--    (mods["Krastorio2"] and
--        {
--          enabled = true,
--          energy_required = 16,
--          ingredients = {{"lead-ore", 10}},
--          results = util.me.byproduct() and {
--            {type="item", name = util.me.lead_plate, amount_min=4, amount_max=5},
--            {type="item", name = "copper-ore", amount_min=1, amount_max=2},
--          } or {
--            {type="item", name = util.me.lead_plate, amount=5},
--          },
--        } or
    enabled = true,
    energy_required = 6.4,
    ingredients = {util.item("lead-ore", 2)},
    results = util.me.byproduct() and {
      {type="item", name = util.me.lead_plate, amount=2, probability=5/6},
      {type="item", name = "copper-ore", amount=1, probability=1/3},
    } or {
      {type="item", name = util.me.lead_plate, amount=2},
    },
--    expensive =
--    {
--      main_product = util.me.lead_plate,
--      enabled = true,
--      energy_required = 12.8,
--      ingredients = {{"lead-ore", 4}},
--      results = util.me.byproduct() and {
--        {type="item", name = util.me.lead_plate, amount=2, probability=5/6},
--        {type="item", name = "copper-ore", amount=1, probability=1/3},
--      } or {
--        {type="item", name = util.me.lead_plate, amount=2},
--      },
--    }
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
--  mods["TheBigFurnace"] and {
--    type = "recipe",
--    name = "big-lead-plate",
--    icons = { { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64 }, },
--    subgroup = "raw-material",
--    category = "big-smelting",
--    order = "d[lead-plate]",
--    normal =
--    {
--      enabled = true,
--      energy_required = 7,
--      ingredients = {{"lead-ore", 100}},
--      results = {
--        {type="item", name = util.me.lead_plate, amount=100, probability=5/6},
--        {type="item", name = "copper-ore", amount=50, probability=1/3},
--      }
--    },
--    expensive =
--    {
--      enabled = true,
--      energy_required = 17.5,
--      ingredients = {{"lead-ore", 100}},
--      results = {
--        {type="item", name = util.me.lead_plate, amount=50, probability=5/6},
--        {type="item", name = "copper-ore", amount=25, probability=1/3},
--      }
--    }
--  } or nil,
})
end
if util.me.more_entities() then
data:extend({
  {
    type = "item",
    name = "lead-expansion-bolt",
    group = "intermediate-products",
    subgroup = "intermediate-product",
    rocket_capacity = 1000,
    stack_size=100,
    icon = "__bzlead__/graphics/icons/lead-expansion-bolt.png",
    icon_size = 128,
    pictures = {
      {filename="__bzlead__/graphics/icons/lead-expansion-bolt.png", size=128, scale=0.25},
    },
    order = "a[basic-intermediates]-e[expansion-bolt]",
  },
  {
    type = "recipe",
    name = "lead-expansion-bolt",
    order = "a[basic-intermediates]-e[expansion-bolt]",
    category = "crafting",
    enabled = true,
    ingredients = {util.item("lead-plate"), util.item("iron-plate")},
    energy_required = 1,
    results = {util.item("lead-expansion-bolt", 2)},
    allow_productivity = true,
  },
})
end

-- vulcanus
if mods["space-age"] then
data:extend({
  {
    type = "fluid",
    name = "molten-lead",
    icon = "__bzlead__/graphics/icons/molten-lead-sa.png",
    subgroup = "fluid",
    order = "b[new-fluid]-b[vulcanus]-d[molten-lead]",
    default_temperature = 1500,
    max_temperature = 2000,
    heat_capacity = "0.01kJ",
    base_color = {.6, 0.4, 0.23},
    flow_color = {0.6, 0.4, 0.23},
    auto_barrel = false
  },
  {
    type = "recipe",
    name = "molten-lead-from-lava",
    icons = {
     {icon = "__base__/graphics/icons/stone.png", icon_size=64, shift={-8,8}},
     {icon = "__bzlead__/graphics/icons/molten-lead-sa.png", icon_size=64, shift={8,8}},
     {icon = "__space-age__/graphics/icons/fluid/lava.png", icon_size=64, shift={0,-8}},
    },
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "a[melting]-a[lava-d]",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "lava", amount = 500},
      {type = "item", name = "calcite", amount = 1},
    },
    energy_required = 16,
    results = util.me.byproduct() and {
      {type = "fluid", name = "molten-lead", amount = 225},
      {type = "item", name = "copper-ore", amount_min = 2, amount_max=3},
      {type = "item", name = "stone", amount = 10},
    } or {
      {type = "fluid", name = "molten-lead", amount = 250},
      {type = "item", name = "stone", amount = 10},
    },
    allow_productivity = true,
    main_product =  "molten-lead",
  },
  {
    type = "recipe",
    name = "molten-lead",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "a[melting]-d[molten-lead]",
    auto_recycle = false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "lead-ore", amount = 50},
      {type = "item", name = "calcite", amount = 1},
    },
    energy_required = 32,
    results = util.me.byproduct() and {
      {type = "fluid", name = "molten-lead", amount = 450},
      {type = "item", name = "copper-ore", amount = 5},
    } or {{type = "fluid", name = "molten-lead", amount = 500}},
    allow_productivity = true,
    hide_from_signal_gui = false,
    main_product =  "molten-lead",
  },
  {
    type = "recipe",
    name = "casting-lead",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "b[casting]-d[casting-lead]",
    icons = {
      {icon = "__bzlead__/graphics/icons/lead-plate.png", size = 64, shift={-4,4}},
      {icon = "__bzlead__/graphics/icons/molten-lead-sa.png", size = 64, shift={4,-4}},
    },
    enabled = false,
    ingredients =
    {
      {type = "fluid", name = "molten-lead", amount = 20, fluidbox_multiplier = 10},
    },
    energy_required = 3.2,
    allow_decomposition = false,
    results = {{type = "item", name = "lead-plate", amount = 2}},
    allow_productivity = true
  },
})
util.add_unlock("foundry", "casting-lead")
util.add_unlock("foundry", "molten-lead")
util.add_unlock("foundry", "molten-lead-from-lava")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

-- gleba
data:extend({
  {
    type = "item",
    name = "chelated-lead",
    icons = {
      {icon="__bzlead__/graphics/icons/lead-powder.png", icon_size = 64}
    },
    subgroup = "agriculture-processes",
    order = "b[agriculture]-c[lead]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "gleba",
    weight = 1 * kg,
  },
  {
    type = "recipe",
    name = "chelated-lead",
    category = "organic-or-hand-crafting",
    subgroup = "agriculture-processes",
    order = "e[chelation]-a[lead]",
    icons = {
      {icon = "__space-age__/graphics/icons/yumako-mash.png", size=64, shift={-4,-4}},
      {icon="__bzlead__/graphics/icons/lead-powder.png", icon_size = 64, shift={4,4}},
    },
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      util.item("yumako-mash", 1),
    },
    energy_required = 1,
    allow_decomposition = false,
    results = {
      util.item("chelated-lead", 1),
      util.item("yumako-mash", 1, .25),
    },
    main_product="chelated-lead",
  },
  {
    type = "recipe",
    name = "lead-dechelation",
    category = "organic-or-hand-crafting",
    subgroup = "agriculture-processes",
    order = "e[chelation]-a[lead]",
    icons = {
      {icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", size = 64, shift={-4,-4}},
      {icon = "__bzlead__/graphics/icons/lead-ore.png", size = 64, shift={4,4}},
    },
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      util.item("chelated-lead", 1),
      util.fluid("sulfuric-acid", 5),
    },
    energy_required = 2,
    allow_decomposition = false,
    results = {util.item("lead-ore", 1)},
  },
})
util.add_unlock("bioflux-processing", "chelated-lead")
util.add_unlock("bioflux-processing", "lead-dechelation")
-- gleba
data:extend({
  {
    type = "item",
    name = "lead-lithium-eutectic",
    icons = {
      {icon="__space-age__/graphics/icons/lithium-plate.png", icon_size = 64, tint={.5,.3,.25}},
    },
    group = "intermediate-products",
    subgroup = "aquilo-processes",
    order = "c[lithium]-c[lead-lithium-eutectic]",
    inventory_move_sound = space_age_item_sounds.metal_small_inventory_move,
    pick_sound = space_age_item_sounds.metal_small_inventory_pickup,
    drop_sound = space_age_item_sounds.metal_small_inventory_move,
    stack_size = 100,
    default_import_location = "aquilo",
    weight = 1 * kg,
  },
  {
    type = "recipe",
    name = "lead-lithium-eutectic",
    category = "metallurgy",
    auto_recycle = false,
    energy_required = 10,
    ingredients = {
      util.item("lead-plate", 4),
      util.item("lithium-plate", 1),
    },
    results = {
      util.item("lead-lithium-eutectic", 5),
    },
    allow_productivity = true,
    enabled = false,
  },
})
util.add_unlock("fusion-reactor", "lead-lithium-eutectic")
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
  ingredients = {util.item("lead-plate", 4), util.item("iron-plate", 5)},
  results = {util.item("firearm-magazine", 2)},
  localised_name = {"item-name.firearm-magazine"},
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
  ingredients = {util.item("iron-plate", 5)},
  results = {util.item("firearm-magazine")},
  localised_name = {"item-name.firearm-magazine"},
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
  ingredients = {util.item("lead-plate", 3), util.item("copper-plate", 1)},
  results = {util.item("firearm-magazine")},
  localised_name = {"item-name.firearm-magazine"},
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
