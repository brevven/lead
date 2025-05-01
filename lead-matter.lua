-- Matter recipes for Krastorio2
if mods["Krastorio2"] then
local util = require("data-util");
local matter = require("__Krastorio2__/prototypes/libraries/matter")

data:extend(
{
  {
    type = "technology",
    name = "lead-matter-processing",
    icons =
    {
      {
        icon = util.k2assets().."/technologies/matter-stone.png",
        icon_size = 256,
      },
      {
        icon = "__bzlead__/graphics/icons/lead-ore.png",
        icon_size = 64, icon_mipmaps = 3,
        scale = 1.25,
      }
    },
    effects = {},
    prerequisites = {"kr-matter-processing"},
    unit =
  	{
      count = 350,
      ingredients =
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"kr-matter-tech-card", 1}
      },
      time = 45
    }
  },
})

util.k2matter({
	k2matter = {
    material = {
      name = "lead-ore",
      type = "item",
      amount = 10,
    },
    matter_count = 5,
    energy_required = 1,
    needs_stabilizer = false,
    allow_productivity = true,
    unlocked_by = "lead-matter-processing"
	}
}, false)

util.k2matter({
	k2matter = {
    material = {
      name = "lead-plate",
      type = "item",
      amount = 10,
    },
    matter_count = 7.5,
    energy_required = 2,
    needs_stabilizer = true,
    allow_productivity = true,
    unlocked_by = "lead-matter-processing"
	}
}, true)

end
