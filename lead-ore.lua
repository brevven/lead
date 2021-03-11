local resource_autoplace = require('resource-autoplace');
local noise = require('noise');

local util = require("__bzlead__.util");

data:extend({
	{
    type = "autoplace-control",
    category = "resource",
    name = "lead-ore",
    richness = true,
    order = "b-e"
	},
	{
    type = "noise-layer",
    name = "lead-ore"
	},
	{
    type = "resource",
    icon_size = 64, icon_mipmaps = 3,
    name = "lead-ore",
    icon = "__bzlead__/graphics/icons/lead-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    map_color = {r=0.35, g=0.10, b=0.10},
    minable =
    {
      hardness = 1,
      mining_particle = "lead-ore-particle",
      mining_time = 1,
      result = "lead-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "lead-ore",
      order = "b-z",
      base_density = 6,
      base_spots_per_km2 = 1,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.2,
      starting_rq_factor_multiplier = 1.7,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
          sheet =
          {
      filename = "__bzlead__/graphics/entity/ores/lead-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__bzlead__/graphics/entity/ores/hr-lead-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
  },
  {
      type = "item",
      name = "lead-ore",
      icon_size = 64, icon_mipmaps = 3,
      icon = "__bzlead__/graphics/icons/lead-ore.png",
      pictures = {
        {filename="__bzlead__/graphics/icons/lead-ore.png", size=64, scale=0.25},
        {filename="__bzlead__/graphics/icons/lead-ore-1.png", size=64, scale=0.25},
        {filename="__bzlead__/graphics/icons/lead-ore-2.png", size=64, scale=0.25},
        {filename="__bzlead__/graphics/icons/lead-ore-3.png", size=64, scale=0.25},
      },
      subgroup = "raw-resource",
      order = "t-c-a",
      stack_size = util.get_stack_size(50)
  },
})

local richness = data.raw.resource["lead-ore"].autoplace.richness_expression  

-- Modify lead autoplace richness: 
-- Up to 200 tiles it's standard
-- From 200 to 700 tiles, richness scales linearly down, until
-- From 700 tiles onward, it's about 1/6th the richness.
data.raw.resource["lead-ore"].autoplace.richness_expression = 
  richness * noise.if_else_chain(
      noise.less_than(noise.distance_from(noise.var("x"), noise.var("y"), noise.var("starting_positions")), noise.to_noise_expression(200)), 1,
      noise.less_than(noise.distance_from(noise.var("x"), noise.var("y"), noise.var("starting_positions")), noise.to_noise_expression(700)), 
        100 / (noise.distance_from(noise.var("x"), noise.var("y"), noise.var("starting_positions")) - 100),
      0.17)
