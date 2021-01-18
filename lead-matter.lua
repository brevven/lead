-- Matter recipes for Krastorio2
if mods["Krastorio2"] then
local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")

data:extend(
{
  {
    type = "technology",
    name = "lead-matter-processing",
    icons =
    {
      {
        icon =   "__Krastorio2__/graphics/technologies/matter-stone.png",
        icon_size = 128,
      },
      {
        icon = "__bzlead__/graphics/icons/lead-ore.png",
        icon_size = 64,
        scale = 0.85,
      }
    },
    prerequisites = {"kr-matter-processing"},
    unit =
  	{
      count = 350,
      ingredients =
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}
      },
      time = 45
    }
  },
})

local lead_ore_matter = 
	{
    item_name = "lead-ore",
    minimum_conversion_quantity = 10,
    matter_value = 5,
    energy_required = 1,
    need_stabilizer = false,
    unlocked_by_technology = "lead-matter-processing"
	}
matter.createMatterRecipe(lead_ore_matter)


local lead_plate_matter = 
	{
    item_name = "lead-plate",
    minimum_conversion_quantity = 10,
    matter_value = 7.5,
    energy_required = 2,
    only_deconversion = true,
    need_stabilizer = true,
    unlocked_by_technology = "lead-matter-processing"
	}
matter.createMatterRecipe(lead_plate_matter)

end
