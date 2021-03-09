local leadutil = require("__bzlead__.util");
require("util")

if leadutil.more_entities() then
data:extend({

  {
    type = "item",
    name = "lead-chest",
    icon = "__bzlead__/graphics/icons/lead-chest.png",
    icon_size = 64, icon_mipmaps = 3,
    subgroup = "storage",
    order = "a[items]-az[lead-chest]",
    place_result = "lead-chest",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "lead-chest",
    enabled = true,
    ingredients = {{"lead-plate", 8}},
    result = "lead-chest"
  },
{
    type = "container",
    name = "lead-chest",
    icon = "__bzlead__/graphics/icons/lead-chest.png",
    icon_size = 64, icon_mipmaps = 3,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "lead-chest"},
    max_health = 150,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
    },
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 24,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      layers =
      {
        {
          filename = "__bzlead__/graphics/entity/lead-chest.png",
          priority = "extra-high",
          width = 33,
          height = 38,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__bzlead__/graphics/entity/hr-lead-chest.png",
            priority = "extra-high",
            width = 66,
            height = 76,
            shift = util.by_pixel(-0.5, -0.5),
            scale = 0.5
          }
        },
        {
          filename = "__bzlead__/graphics/entity/lead-chest-shadow.png",
          priority = "extra-high",
          width = 56,
          height = 26,
          shift = util.by_pixel(10, 6.5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__bzlead__/graphics/entity/hr-lead-chest-shadow.png",
            priority = "extra-high",
            width = 110,
            height = 50,
            shift = util.by_pixel(10.5, 6),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "corpse",
    name = "lead-chest-remnants",
    icon = "__bzlead__/graphics/icons/lead-chest.png",
    icon_size = 64, icon_mipmaps = 3,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "storage-remnants",
    order = "a-b-a",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__bzlead__/graphics/entity/lead-chest-remnants.png",
      line_length = 1,
      width = 64,
      height = 40,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(12, 0),
      hr_version =
      {
        filename = "__bzlead__/graphics/entity/hr-lead-chest-remnants.png",
        line_length = 1,
        width = 126,
        height = 78,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(12, 0),
        scale = 0.5
      }
    }
  },

})
end
