local util = require("data-util");

util.add_hot_metals({
  {name="lead-plate", spoilTicks=20*60, icons={
    { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64},
    { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, tint={.9,.3,0, .5}},
  }},
  {name="lead-expansion-bolt", spoilTicks=20*60, icons={
    { icon = "__bzlead__/graphics/icons/lead-expansion-bolt.png", icon_size = 128},
    { icon = "__bzlead__/graphics/icons/lead-expansion-bolt.png", icon_size = 128, tint={.9,.3,0, .5}},
  }},
})

