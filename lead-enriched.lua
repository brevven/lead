-- Enriched Lead for Krastorio2
local util = require("__bzlead__.util");

if mods["Krastorio2"] then
data:extend(
{
  {
    type = "item",
    name = "enriched-lead",
    icon_size = 64,
    icon = "__bzlead__/graphics/icons/enriched-lead.png",
      pictures = {
        {filename="__bzlead__/graphics/icons/enriched-lead.png", size=64, scale=0.25},
        {filename="__bzlead__/graphics/icons/enriched-lead-2.png", size=64, scale=0.25},
        {filename="__bzlead__/graphics/icons/enriched-lead-3.png", size=64, scale=0.25},
        {filename="__bzlead__/graphics/icons/enriched-lead-4.png", size=64, scale=0.25},
      },
    subgroup = "raw-material",
    order = "e05-a[enriched-ores]-a1[enriched-lead]",
    stack_size = util.get_k2_stack_size(),
  },
  {
    type = "recipe",
    name = "enriched-lead",
    icon = "__bzlead__/graphics/icons/enriched-lead.png",
    icon_size = 64,
    category = "chemistry",
    energy_required = 3,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    allow_productivity = true,
    ingredients =
    {
      {type = "fluid", name = "sulfuric-acid", amount = 3},
      {type = "fluid", name = "water", amount = 25, catalyst_amount = 25},
      {type = "item",  name = "lead-ore", amount = 9}
    },
    results =
    { 
      {type = "item",  name = "enriched-lead", amount = 5},
      {type = "item",  name = "copper-ore", amount = 2},
      {type = "fluid", name = "dirty-water", amount = 25, catalyst_amount = 25}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.721, g = 0.525, b = 0.043, a = 0.000},
      secondary = {r = 0.200, g = 0.680, b = 0.300, a = 0.357},
      tertiary = {r = 0.690, g = 0.768, b = 0.870, a = 0.000}, 
      quaternary = {r = 0.0, g = 0.980, b = 0.603, a = 0.900}
    },
    subgroup = "raw-material",
    order = "e03[enriched-lead]"
  },
  {
      type = "recipe",
      name = "enriched-lead-plate",
      icons =
      {
        { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64 },
        { icon = "__bzlead__/graphics/icons/enriched-lead.png", icon_size = 64, scale=0.25, shift= {-8, -8}},
      },
      category = "smelting",
      energy_required = 16,
      enabled = false,
      always_show_made_in = true,
      always_show_products = true,
      allow_productivity = true,
      ingredients = 
      {
        {"enriched-lead", 5}
      },
      result = "lead-plate",
      result_count = 5,
      order = "b[lead-plate]-b[enriched-lead-plate]"
  },	
	{
		type = "recipe",
		name = "dirty-water-filtration-lead",
		category = "fluid-filtration",
		icons =
		{
			{
				icon = data.raw.fluid["dirty-water"].icon,
				icon_size = data.raw.fluid["dirty-water"].icon_size
			},
			{
				icon = data.raw.item["lead-ore"].icon,
				icon_size =	data.raw.item["lead-ore"].icon_size,
				scale = 0.20 * (data.raw.fluid["dirty-water"].icon_size/data.raw.item["lead-ore"].icon_size),
				shift = {0, 4}
			}
		},
		icon_size = data.raw.fluid["dirty-water"].icon_size,
		energy_required = 2,
		enabled = false,
		allow_as_intermediate = false,
		always_show_made_in = true,
		always_show_products = true,
		ingredients =
		{
			{type = "fluid", name = "dirty-water", amount = 100, catalyst_amount = 100},
		},
		results =
		{
			{type = "fluid", name = "water", amount = 100, catalyst_amount = 100},
			{type = "item",  name = "stone", probability = 0.30, amount = 1},
			{type = "item",  name = "lead-ore", probability = 0.20, amount_min = 1, amount_max = 4},
			{type = "item",  name = "copper-ore", probability = 0.05, amount = 1},
		},
		crafting_machine_tint =
		{
			primary = {r = 0.60, g = 0.20, b = 0, a = 0.6},
			secondary = {r = 1.0, g = 0.843, b = 0.0, a = 0.9}
		},
		subgroup = "raw-material",
		order = "w013[dirty-water-filtration-lead]"
	}
}
)
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "enriched-lead" })
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "enriched-lead-plate" })
util.add_effect("kr-enriched-ores", { type = "unlock-recipe", recipe = "dirty-water-filtration-lead" })
end
